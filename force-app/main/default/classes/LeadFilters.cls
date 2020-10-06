public with sharing class LeadFilters {

    public static Select.Filter hasEmailOptOut() {
        return Select.Field.isEqual(Lead.HasOptedOutOfEmail, true).andX(
            Select.Field.notEqual(Lead.Email, null)
        );
    }

    public static Select.Filter hasDuplicateCheckOn() {
        return Select.Field.isEqual(Lead.Duplicate_Check__c, true);
    }

    public static Select.Filter hasPhoneNumber() {
        return Select.Field.notEqual(Lead.Phone, null).orX(
            Select.Field.notEqual(Lead.Direct_Phone__c, null).orX(
            Select.Field.notEqual(Lead.MobilePhone, null).orX(
            Select.Field.notEqual(Lead.Fax, null)
        )));        
    }

    public static Select.Filter hasNoPreferredName() {
        return Select.Field.isEqual(Lead.Preferred_Name__c, null);
    }
    
    public static Select.Filter hasOriginalCampaign() {
        return Select.Field.notEqual(Lead.Original_Campaign__c, null);
    }

    public static Select.Filter changedEmailOptOut() {
        return Select.Field.hasChanged(Lead.HasOptedOutOfEmail).andX(
            Select.Field.notEqual(Lead.Email, null)
        );
    }
    
    public static Select.Filter changedOriginalCampaign() {
        return Select.Field.hasChanged(Lead.Original_Campaign__c);
    }
    
    public static Select.Filter isConverted() {
    	return Select.Field.isEqual(Lead.IsConverted, true).andX(
    		Select.Field.hasChanged(Lead.IsConverted)
    	);
    }

}