public with sharing class CampaignMemberTriggerHandler {

    public static Boolean bypassTrigger = false;
    public static Boolean runContactCampaignMemberTrigger = true;
    public static Boolean runLeadCampaignMemberTrigger = true;
    final List<CampaignMember> newRecords;
    final Map<Id, CampaignMember> oldMap;

    public CampaignMemberTriggerHandler(List<CampaignMember> newRecords, Map<Id, CampaignMember> oldMap) {
        runContactCampaignMemberTrigger = false;     
        runLeadCampaignMemberTrigger = false;   
        this.newRecords = newRecords;
        this.oldMap = oldMap;
    }

    public void afterInsert() {

        if (bypassTrigger) return;

        if (ContactTriggerHandler.runContactCampaignMemberTrigger && LeadTriggerHandler.runLeadCampaignMemberTrigger) {
            CampaignMemberServices.updateOriginalCampaign(
                CampaignMemberServices.hasOriginalCampaign().filter(newRecords)        
            );        
        }  

    }

    public void afterUpdate() {

        if (bypassTrigger) return;

        if (ContactTriggerHandler.runContactCampaignMemberTrigger && LeadTriggerHandler.runLeadCampaignMemberTrigger) {
            CampaignMemberServices.deleteOriginalCampaign(
                CampaignMemberServices.changedOriginalCampaignFalse().filter(newRecords)        
            );   
            CampaignMemberServices.updateOriginalCampaign(
                CampaignMemberServices.changedOriginalCampaignTrue().filter(newRecords)        
            );                     	
        }

    }

    public void afterDelete() {

        if (bypassTrigger) return;
        
        if (ContactTriggerHandler.runContactCampaignMemberTrigger && LeadTriggerHandler.runLeadCampaignMemberTrigger) {
            CampaignMemberServices.deleteOriginalCampaign(
                CampaignMemberServices.hasOriginalCampaign().filter(oldMap.values())        
            );  
        }

    }


}