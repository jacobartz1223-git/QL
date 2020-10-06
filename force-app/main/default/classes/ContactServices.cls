public with sharing class ContactServices {

    public static void turnDuplicateCheckOff(List<Contact> contacts) {
        Set<Id> contactIds = Pluck.ids(contacts);
        List<Contact> newContacts = [SELECT Id, Duplicate_Check__c FROM Contact WHERE Id IN: contactIds AND Duplicate_Check__c = true];
        for (Contact cont : newContacts) cont.Duplicate_Check__c = false;
        if (!newContacts.isEmpty()) update newContacts;
    }

    public static void cleanPhoneNumbers(List<Contact> contacts) {
        for (Contact cont : contacts) {
            cont.Phone = Strings.formatPhoneNumber(cont.Phone);
            cont.OtherPhone = Strings.formatPhoneNumber(cont.OtherPhone);
            cont.MobilePhone = Strings.formatPhoneNumber(cont.MobilePhone);
            cont.Fax = Strings.formatPhoneNumber(cont.Fax);
        }
    }

    public static void updatePreferredName(List<Contact> contacts) {
        for (Contact cont : contacts) {
            if (String.isEmpty(cont.Preferred_Name__c)) {
                cont.Preferred_Name__c = cont.FirstName;
            }
        }
    }
    
    public static void updatePhoneOptOutDates(List<Contact> contacts) {
        for (Contact cont : contacts) {
            if (cont.DoNotCall && cont.Opt_Out_Date__c == null) cont.Opt_Out_Date__c = DateTime.now(); 
            else if (!cont.DoNotCall && cont.Opt_Out_Date__c != null) cont.Opt_Out_Date__c = null;
        }
    }

    public static void updateContactEmailOptOuts(List<Contact> contacts) {

        Set<Id> contactIds = Pluck.ids(contacts);
        Map<String, Boolean> emailOptOuts = new Map<String, Boolean>();
        for (Contact cont : contacts)
            emailOptOuts.put(cont.Email, cont.HasOptedOutOfEmail);

        OptOutServices.updateEmailOptOuts(emailOptOuts, contactIds);    
    }

    public static void setZipCode(List<Contact> contacts) {
        Set<String> zipCodes = Pluck.strings(Contact.MailingPostalCode, contacts);
        ZipCodeServices.zipCodes = zipCodes;
        zipCodeServices.query();

        for (Contact cont : contacts) {
            cont.MailingPostalCode = zipCodeServices.clean(cont.MailingPostalCode);
            Zip_Code__c zipCode = zipCodeServices.find(cont.MailingPostalCode); 
            cont.MailingPostalCodeLookup__c = (zipCode == null ? null : zipCode.Id);
        }       
    }

    public static void clearZipCode(List<Contact> contacts) {
        for (Contact cont : contacts) {
            cont.MailingPostalCodeLookup__c = null;
        }  
    }

    public static void setState(List<Contact> contacts) {
        for (Contact cont : contacts) {
            State__c state = StateServices.findByAbbreviation(cont.MailingStateCode);
            cont.MailingStateLookup__c = (state == null ? null : state.Id);
        }
    }

    public static void updateOriginalCampaignMember(List<Contact> contacts, Map<Id, Contact> oldMap) {
        insertOriginalCampaignMember(contacts);
        deleteOldOriginalCampaignMember(oldMap.values());
    }

    public static void insertOriginalCampaignMember(List<Contact> contacts) {

        Set<Id> contactIds = Pluck.ids(contacts);
        Set<Id> campaignIds = Pluck.ids(Contact.Original_Campaign__c, contacts);
        List<CampaignMember> campaignMembers = [SELECT Id, ContactId, CampaignId 
                                                FROM CampaignMember 
                                                WHERE ContactId IN: contactIds AND ContactId != null
                                                AND CampaignId IN: campaignIds AND CampaignId != null];
        Map<String, CampaignMember> keys = new Map<String, CampaignMember>();
        for (CampaignMember cm : campaignMembers) keys.put(cm.ContactId + '|' + cm.CampaignId, cm);

        List<CampaignMember> upsertCampaignMembers = new List<CampaignMember>();
        for (Contact cont : contacts) {
            if (cont.Original_Campaign__c != null) {
                if (!keys.containsKey(cont.Id + '|' + cont.Original_Campaign__c)) {
                    upsertCampaignMembers.add(new CampaignMember(ContactId=cont.Id, CampaignId=cont.Original_Campaign__c, Original_Campaign__c=true));
                } else {
                    CampaignMember cm = new CampaignMember(Id=keys.get(cont.Id + '|' + cont.Original_Campaign__c).Id);
                    cm.Original_Campaign__c = true;
                    upsertCampaignMembers.add(cm);
                }
            }
        }
        try {
            if (!upsertCampaignMembers.isEmpty()) upsert upsertCampaignMembers;
        } catch (exception ex) { System.debug(ex.getMessage()); }
    }

    public static void deleteOldOriginalCampaignMember(List<Contact> contacts) {

        Set<Id> contactIds = Pluck.ids(contacts);
        Set<Id> campaignIds = Pluck.ids(Contact.Original_Campaign__c, contacts);
        List<CampaignMember> campaignMembers = [SELECT Id, ContactId, CampaignId 
                                                FROM CampaignMember 
                                                WHERE ContactId IN: contactIds AND ContactId != null
                                                AND CampaignId IN: campaignIds AND CampaignId != null];
        Map<String, CampaignMember> keys = new Map<String, CampaignMember>();
        for (CampaignMember cm : campaignMembers) keys.put(cm.ContactId + '|' + cm.CampaignId, cm);

        List<CampaignMember> deleteCampaignMembers = new List<CampaignMember>();
        for (Contact cont : contacts) {
            if (cont.Original_Campaign__c != null && keys.containsKey(cont.Id + '|' + cont.Original_Campaign__c)) {
                deleteCampaignMembers.add(new CampaignMember(Id=keys.get(cont.Id + '|' + cont.Original_Campaign__c).Id));
            }
        }
        try {
            if (!deleteCampaignMembers.isEmpty()) delete deleteCampaignMembers;
        } catch (exception ex) { System.debug(ex.getMessage()); }

    }

    public static void updateAffiliations(List<Contact> contacts) {

        Map<Id, Set<String>> newMap = getNewAffiliations(contacts);
        List<Contact_Affiliation__c> oldContactAffiliations = [SELECT Id, Contact__c, Affiliation__c, Affiliation__r.Name 
                                                            FROM Contact_Affiliation__c 
                                                            WHERE Contact__c IN: newMap.keySet()];
        
        Map<Id, Set<String>> oldMap = getOldAffiliations(oldContactAffiliations);
        List<Contact_Affiliation__c> deleteContactAffiliations = getDeletedAffiliations(newMap, oldContactAffiliations);
        if (!deleteContactAffiliations.isEmpty()) delete deleteContactAffiliations;

        Map<Id, Set<String>> insertAffiliations = getInsertedAffiliations(newMap, oldMap);
        Set<String> affiliationNames = new Set<String>();
        for (Id contactId : insertAffiliations.keySet()) affiliationNames.addAll(insertAffiliations.get(contactId));
        Map<String, Id> affiliationsByName = getAffiliationsByName(affiliationNames);

        List<Contact_Affiliation__c> insertContactAffiliations = new List<Contact_Affiliation__c>();
        for (Id contactId : insertAffiliations.keySet()) {
            for (String affiliationName : insertAffiliations.get(contactId)) {
                if (affiliationsByName.get(affiliationName) != null) {
                    insertContactAffiliations.add(new Contact_Affiliation__c(Contact__c=contactId, Affiliation__c=affiliationsByName.get(affiliationName)));
                }
            }
        }
        if (!insertContactAffiliations.isEmpty()) insert insertContactAffiliations;
    }

    public static void createOpportunityContacts(List<Contact> contacts) {
        List<Opportunity_Contact_Role__c> oppContactRoles = new List<Opportunity_Contact_Role__c>();
        for (Contact cont : contacts) {
            oppContactRoles.add(new Opportunity_Contact_Role__c(Opportunity__c=cont.Opportunity_Id__c, Contact__c=cont.Id, Role__c=cont.Role__c));
        }
        try {
            insert oppContactRoles;
        } catch (exception ex) { System.debug(ex.getMessage()); }

        List<Contact> updateContacts = [SELECT Opportunity_Id__c FROM Contact WHERE Id IN: contacts];
        for (Contact cont : updateContacts) cont.Opportunity_Id__c = null;
        update updateContacts;
    }

    @TestVisible static Map<Id, Set<String>> getNewAffiliations(List<Contact> contacts) {
        Map<Id, Set<String>> competition = new Map<Id, Set<String>>();
        for (Contact cont : contacts) {
            List<String> names = new List<String>();
            if (cont.Affiliation__c != null) names = cont.Affiliation__c.split(';');
            competition.put(cont.Id, new Set<String>(names));
        } 
        return competition;
    }

    @TestVisible static Map<Id, Set<String>> getOldAffiliations(List<Contact_Affiliation__c> contactAffiliations) {
        Map<Id, Set<String>> competition = new Map<Id, Set<String>>();
        for (Contact_Affiliation__c contactAffiliation : contactAffiliations) {
            Set<String> names = new Set<String>();
            if (competition.get(contactAffiliation.Contact__c) != null) names = competition.get(contactAffiliation.Contact__c);
            names.add(contactAffiliation.Affiliation__r.Name);
            competition.put(contactAffiliation.Contact__c, names);
        }
        return competition;
    }

    @TestVisible static List<Contact_Affiliation__c> getDeletedAffiliations(Map<Id, Set<String>> newMap, List<Contact_Affiliation__c> contactAffiliations) {
        List<Contact_Affiliation__c> deleteContactAffiliations = new List<Contact_Affiliation__c>();
        for (Contact_Affiliation__c contactAffiliation : contactAffiliations) {
            Set<String> names = newMap.get(contactAffiliation.Contact__c);
            if (names.isEmpty() || !names.contains(contactAffiliation.Affiliation__r.Name)) {
                deleteContactAffiliations.add(contactAffiliation);
            }
        }
        return deleteContactAffiliations;
    }

    @TestVisible static Map<Id, Set<String>> getInsertedAffiliations(Map<Id, Set<String>> newMap, Map<Id, Set<String>> oldMap) {
        Map<Id, Set<String>> insertAffilations = new Map<Id, Set<String>>();
        for (Id oppId : newMap.keySet()) {
            Set<String> names = newMap.get(oppId);
            if (oldMap.get(oppId) != null) names.removeAll(oldMap.get(oppId));
            insertAffilations.put(oppId, names);
        }
        return insertAffilations;
    }

    @TestVisible static Map<String, Id> getAffiliationsByName(Set<String> affiliationNames) {
        List<Affiliation__c> affiliations = [SELECT Id, Name FROM Affiliation__c WHERE Name IN: affiliationNames];
        Map<String, Id> affiliationMap = new Map<String, Id>();
        for (Affiliation__c affiliation : affiliations) affiliationMap.put(affiliation.Name, affiliation.Id);
        return affiliationMap;
    }


}