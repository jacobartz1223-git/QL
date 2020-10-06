/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 09-29-2020
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
 * Modifications Log 
 * Ver   Date         Author                               Modification
 * 1.0   09-29-2020   ChangeMeIn@UserSettingsUnder.SFDoc   Initial Version
**/
public with sharing class LeadServices {

    public static void turnDuplicateCheckOff(List<Lead> leads) {
        Set<Id> leadIds = Pluck.ids(leads);
        List<Lead> newLeads = [SELECT Id, Duplicate_Check__c FROM Lead WHERE Id IN: leadIds AND Duplicate_Check__c = true];
        for (Lead ld : newLeads) ld.Duplicate_Check__c = false;
        if (!newLeads.isEmpty()) update newLeads;
    }

    public static void cleanPhoneNumbers(List<Lead> leads) {
        for (Lead ld : leads) {
            ld.Phone = Strings.formatPhoneNumber(ld.Phone);
            ld.Direct_Phone__c = Strings.formatPhoneNumber(ld.Direct_Phone__c);
            ld.MobilePhone = Strings.formatPhoneNumber(ld.MobilePhone);
            ld.Fax = Strings.formatPhoneNumber(ld.Fax);
        }
    }

    /*public static void updatePreferredName(List<Lead> leads) {
        for (Lead ld : leads) {
            if (String.isEmpty(ld.Preferred_Name__c)) {
                ld.Preferred_Name__c = ld.FirstName;
            }
        }*/
    //}

    public static void updateLeadEmailOptOuts(List<Lead> leads) {

        Set<Id> leadIds = Pluck.ids(leads);
        Map<String, Boolean> emailOptOuts = new Map<String, Boolean>();
        for (Lead ld : leads)
            emailOptOuts.put(ld.Email, ld.HasOptedOutOfEmail);

        OptOutServices.updateEmailOptOuts(emailOptOuts, leadIds);    
    }

    public static void updateOriginalCampaignMember(List<Lead> leads, Map<Id, Lead> oldMap) {

        insertOriginalCampaignMember(leads);
        deleteOldOriginalCampaignMember(oldMap.values());
    }

    public static void insertOriginalCampaignMember(List<Lead> leads) {

        Set<Id> LeadIds = Pluck.ids(leads);
        Set<Id> campaignIds = Pluck.ids(Lead.Original_Campaign__c, leads);
        List<CampaignMember> campaignMembers = [SELECT Id, LeadId, CampaignId 
                                                FROM CampaignMember 
                                                WHERE LeadId IN: LeadIds AND LeadId != null
                                                AND CampaignId IN: campaignIds AND CampaignId != null];
        Map<String, CampaignMember> keys = new Map<String, CampaignMember>();
        for (CampaignMember cm : campaignMembers) keys.put(cm.LeadId + '|' + cm.CampaignId, cm);

        List<CampaignMember> upsertCampaignMembers = new List<CampaignMember>();
        for (Lead ld : leads) {
            if (ld.Original_Campaign__c != null) {
                if (!keys.containsKey(ld.Id + '|' + ld.Original_Campaign__c)) {
                    upsertCampaignMembers.add(new CampaignMember(LeadId=ld.Id, CampaignId=ld.Original_Campaign__c, Original_Campaign__c=true));
                } else {
                    CampaignMember cm = new CampaignMember(Id=keys.get(ld.Id + '|' + ld.Original_Campaign__c).Id);
                    cm.Original_Campaign__c = true;
                    upsertCampaignMembers.add(cm);
                }
            }
        }
        try {
            if (!upsertCampaignMembers.isEmpty()) upsert upsertCampaignMembers;
        } catch (exception ex) { System.debug(ex.getMessage()); }
    }

    public static void deleteOldOriginalCampaignMember(List<Lead> leads) {

        Set<Id> LeadIds = Pluck.ids(leads);
        Set<Id> campaignIds = Pluck.ids(Lead.Original_Campaign__c, leads);
        List<CampaignMember> campaignMembers = [SELECT Id, LeadId, CampaignId 
                                                FROM CampaignMember 
                                                WHERE LeadId IN: LeadIds AND LeadId != null
                                                AND CampaignId IN: campaignIds AND CampaignId != null];
        Map<String, CampaignMember> keys = new Map<String, CampaignMember>();
        for (CampaignMember cm : campaignMembers) keys.put(cm.LeadId + '|' + cm.CampaignId, cm);

        List<CampaignMember> deleteCampaignMembers = new List<CampaignMember>();
        for (Lead ld : leads) {
            if (ld.Original_Campaign__c != null && keys.containsKey(ld.Id + '|' + ld.Original_Campaign__c)) {
                deleteCampaignMembers.add(new CampaignMember(Id=keys.get(ld.Id + '|' + ld.Original_Campaign__c).Id));
            }
        }
        try {
            if (!deleteCampaignMembers.isEmpty()) delete deleteCampaignMembers;
        } catch (exception ex) { System.debug(ex.getMessage()); }

    }

    public static void processConversion(List<Lead> leads) {
        if (leads.isEmpty()) return;
        Map<Id, Lead> leadMap = new Map<Id, Lead>(leads);

        mapConvertedFields(leadMap);
        reparentChildren(leadMap);
    }

    @TestVisible static void mapConvertedFields(Map<Id, Lead> leadMap) {
        Set<Id> contactIds = Pluck.ids(Lead.ConvertedContactId, leadMap.values());
        Map<Id, Contact> convertedContacts = new Map<Id, Contact>([SELECT Id, RecordTypeId, Status__c, OtherPhone FROM Contact WHERE Id IN: contactIds]);
        for (Id leadId : leadMap.keySet()) {
            Contact cont = convertedContacts.get(leadMap.get(leadId).ConvertedContactId);
            cont.Status__c = leadMap.get(leadId).Status;
            cont.OtherPhone = leadMap.get(leadId).Direct_Phone__c;
            cont.Last_Status_Change_Date__c = leadMap.get(leadId).Last_Status_Change_Date__c;
            cont.RecordTypeId = Schema.SObjectType.Contact.getRecordTypeInfosByName().get('Real Estate').getRecordTypeId();
        }
         try {
            if (!convertedContacts.isEmpty()) update convertedContacts.values();
        } catch (exception ex) { System.debug(ex.getMessage()); }       
    }

    @TestVisible static void reparentChildren(Map<Id, Lead> leadMap) {
        reparentObject(leadMap, Referral_Lead__c.SObjectType, Referral_Lead__c.Lead__c, Referral_Lead__c.Contact__c, Referral_Lead__c.Account__c);
    }

    @TestVisible static void reparentObject(Map<Id, Lead> leadMap, Schema.SObjectType sObjType, 
                                            Schema.SObjectField childLeadField, Schema.SObjectField childContactField, Schema.SObjectField childAccountField) {
        List<String> fields = new List<String>{childLeadField.getDescribe().getName()};
        if (childContactField != null) fields.add(childContactField.getDescribe().getName());
        if (childAccountField != null) fields.add(childAccountField.getDescribe().getName());

        Set<Id> leadIds = leadMap.keySet();
        String soql = 'SELECT ' + String.join(fields, ',') + ' FROM ' +  sObjType.getDescribe().getName() + ' WHERE ' + childLeadField + ' IN: leadIds';
        List<SObject> children = Database.query(soql);

        for (SObject child : children) {
            if (childContactField != null) child.put(childContactField, leadMap.get((Id)child.get(childLeadField)).ConvertedContactId);
            if (childAccountField != null) child.put(childAccountField, leadMap.get((Id)child.get(childLeadField)).ConvertedAccountId);
        }
        try {
            if (!children.isEmpty()) update children;
        } catch (exception ex) { System.debug(ex.getMessage()); }

    }

}