public with sharing class ContactTriggerHandler {

    public static Boolean bypassTrigger = false;
    public static Boolean runContactAffiliationTrigger = true;
    public static Boolean runContactCampaignMemberTrigger = true;
    public static Boolean runContactOptOutTrigger = true;
    final List<Contact> newRecords;
    final Map<Id, Contact> oldMap;

    public ContactTriggerHandler(List<Contact> newRecords, Map<Id, Contact> oldMap) {
        runContactAffiliationTrigger = false; 
        runContactCampaignMemberTrigger = false;    
        this.newRecords = newRecords;
        this.oldMap = oldMap;
    }

    public void beforeInsert() {

        if (bypassTrigger) return;

        ContactServices.cleanPhoneNumbers(
            ContactFilters.hasPhoneNumber().filter(newRecords)
        );
        ContactServices.updatePreferredName(
            ContactFilters.hasNoPreferredName().filter(newRecords)
        );
        ContactServices.updatePhoneOptOutDates(
            ContactFilters.changedPhoneOptOut().filter(newRecords)
        );
        ContactServices.setState(
            ContactFilters.hasState().filter(newRecords)        
        );        
        ContactServices.setZipCode(
            ContactFilters.validUnitedStatesZipCode().filter(newRecords)        
        );
        ContactServices.clearZipCode(
            ContactFilters.invalidUnitedStatessZipCode().filter(newRecords)        
        );

    }

    public void beforeUpdate() {

    	if (bypassTrigger) return;

        ContactServices.cleanPhoneNumbers(
            ContactFilters.changedPhoneNumber().filter(newRecords, oldMap)
        );
        ContactServices.updatePreferredName(
            ContactFilters.hasNoPreferredName().filter(newRecords, oldMap)
        );
        ContactServices.updatePhoneOptOutDates(
            ContactFilters.changedPhoneOptOut().filter(newRecords, oldMap)
        );
        ContactServices.setState(
            ContactFilters.changedState().filter(newRecords, oldMap)        
        );  
        ContactServices.setZipCode(
            ContactFilters.validChangedUnitedStatesZipCode().filter(newRecords, oldMap)        
        );
        ContactServices.clearZipCode(
            ContactFilters.invalidChangedUnitedStatesZipCode().filter(newRecords, oldMap)       
        );

    }

    public void afterInsert() {

        if (bypassTrigger) return;

        ContactServices.turnDuplicateCheckOff(
            ContactFilters.hasDuplicateCheckOn().filter(newRecords)
        );

        if (runContactOptOutTrigger) {
            runContactOptOutTrigger = false;
            ContactServices.updateContactEmailOptOuts(
                ContactFilters.hasEmailOptOut().filter(newRecords)
            );
        }

        ContactServices.createOpportunityContacts(
            ContactFilters.hasOpportunity().filter(newRecords)        
        );

        if (ContactAffiliationTriggerHandler.runContactTrigger) {
            ContactServices.updateAffiliations(
                ContactFilters.hasAffiliation().filter(newRecords)        
            );        
        }

        if (CampaignMemberTriggerHandler.runContactCampaignMemberTrigger) {
            ContactServices.insertOriginalCampaignMember(
                ContactFilters.hasOriginalCampaign().filter(newRecords)        
            );        
        }
    }

    public void afterUpdate() {

        if (bypassTrigger) return;

        ContactServices.createOpportunityContacts(
            ContactFilters.changedOpportunity().filter(newRecords, oldMap)        
        );

        if (runContactOptOutTrigger) {
            runContactOptOutTrigger = false;
            ContactServices.updateContactEmailOptOuts(
                ContactFilters.changedEmailOptOut().filter(newRecords, oldMap)
            );
        }

        if (ContactAffiliationTriggerHandler.runContactTrigger) {
            ContactServices.updateAffiliations(
                ContactFilters.changedAffiliation().filter(newRecords, oldMap)        
            );        
        }

        if (CampaignMemberTriggerHandler.runContactCampaignMemberTrigger) {
            List<Contact> changedOriginalCampaign = ContactFilters.changedOriginalCampaign().filter(newRecords, oldMap);
            if (!changedOriginalCampaign.isEmpty()) {
                Map<Id, Contact> filteredMap = new Map<Id, Contact>(changedOriginalCampaign);
                Map<Id, Contact> oldMapClone = oldMap.clone();
                oldMapClone.keySet().retainAll(filteredMap.keySet());
                ContactServices.updateOriginalCampaignMember(changedOriginalCampaign, oldMapClone);
            }
        }
    }

}