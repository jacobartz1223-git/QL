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
public with sharing class LeadTriggerHandler {

    public static Boolean bypassTrigger = false;
    public static Boolean runLeadCampaignMemberTrigger = true;
    public static Boolean runLeadOptOutTrigger = true;
    final List<Lead> newRecords;
    final Map<Id, Lead> oldMap;

    public LeadTriggerHandler(List<Lead> newRecords, Map<Id, Lead> oldMap) {
        runLeadCampaignMemberTrigger = false;    
        this.newRecords = newRecords;
        this.oldMap = oldMap;
    }

    public void beforeInsert() {

        if (bypassTrigger) return;

        /*LeadServices.updatePreferredName(
            LeadFilters.hasNoPreferredName().filter(newRecords)
        );*/

    }

    public void beforeUpdate() {

        if (bypassTrigger) return;

       /* LeadServices.updatePreferredName(
            LeadFilters.hasNoPreferredName().filter(newRecords, oldMap)
        );*/

    }

    public void afterInsert() {

        if (bypassTrigger) return;

        LeadServices.turnDuplicateCheckOff(
            LeadFilters.hasDuplicateCheckOn().filter(newRecords)
        );

        if (runLeadOptOutTrigger) {
            runLeadOptOutTrigger = false;
            LeadServices.updateLeadEmailOptOuts(
                LeadFilters.hasEmailOptOut().filter(newRecords)
            );
        }

        if (CampaignMemberTriggerHandler.runLeadCampaignMemberTrigger) {
            LeadServices.insertOriginalCampaignMember(
                LeadFilters.hasOriginalCampaign().filter(newRecords)        
            );        
        }
    }

    public void afterUpdate() {

        if (bypassTrigger) return;

        if (runLeadOptOutTrigger) {
            runLeadOptOutTrigger = false;
            LeadServices.updateLeadEmailOptOuts(
                LeadFilters.changedEmailOptOut().filter(newRecords, oldMap)
            );
        }

        if (CampaignMemberTriggerHandler.runLeadCampaignMemberTrigger) {
            List<Lead> changedOriginalCampaign = LeadFilters.changedOriginalCampaign().filter(newRecords, oldMap);
            if (!changedOriginalCampaign.isEmpty()) {
                Map<Id, Lead> filteredMap = new Map<Id, Lead>(changedOriginalCampaign);
                Map<Id, Lead> oldMapClone = oldMap.clone();
                oldMapClone.keySet().retainAll(filteredMap.keySet());
                LeadServices.updateOriginalCampaignMember(changedOriginalCampaign, oldMapClone);
            }
        }

        LeadServices.processConversion(
            LeadFilters.isConverted().filter(newRecords, oldMap)
        );

    }

}