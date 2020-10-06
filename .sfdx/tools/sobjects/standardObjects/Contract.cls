// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Contract {
    global Id Id;
    global Account Account;
    global Id AccountId;
    global String OwnerExpirationNotice;
    global Date StartDate;
    global Date EndDate;
    global String BillingStreet;
    global String BillingCity;
    global String BillingState;
    global String BillingPostalCode;
    global String BillingCountry;
    global String BillingStateCode;
    global String BillingCountryCode;
    global Double BillingLatitude;
    global Double BillingLongitude;
    global String BillingGeocodeAccuracy;
    global Address BillingAddress;
    global String ShippingStreet;
    global String ShippingCity;
    global String ShippingState;
    global String ShippingPostalCode;
    global String ShippingCountry;
    global String ShippingStateCode;
    global String ShippingCountryCode;
    global Double ShippingLatitude;
    global Double ShippingLongitude;
    global String ShippingGeocodeAccuracy;
    global Address ShippingAddress;
    global Integer ContractTerm;
    global User Owner;
    global Id OwnerId;
    global String Status;
    global User CompanySigned;
    global Id CompanySignedId;
    global Date CompanySignedDate;
    global Contact CustomerSigned;
    global Id CustomerSignedId;
    global String CustomerSignedTitle;
    global Date CustomerSignedDate;
    /* Add specifications unique to your contract here.
    */
    global String SpecialTerms;
    global User ActivatedBy;
    global Id ActivatedById;
    global Datetime ActivatedDate;
    global String StatusCode;
    global String Description;
    global RecordType RecordType;
    global Id RecordTypeId;
    global Boolean IsDeleted;
    global String ContractNumber;
    global Datetime LastApprovedDate;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Date LastActivityDate;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global String Type__c;
    global Contact Client_Partner_Signed_By__r;
    global Id Client_Partner_Signed_By__c;
    global Opportunity Opportunity__r;
    global Id Opportunity__c;
    global Decimal Total_Contract_Amount__c;
    /* Total Contract Amount / # of Months in Agreement
    */
    global Decimal Monthly_Contract_Amount__c;
    global Date Contract_End_Date__c;
    global String Attachment_Id__c;
    global String Attachment_Name__c;
    global String Attachment_Link__c;
    /* Does contract auto-renew?
    */
    global Boolean Auto_renewal__c;
    /* When do we need to decide if we want to auto-renew or opt-out?
    */
    global Date Renewal_Deadline__c;
    global Double Anticipated_Leads__c;
    global String Payment_Type__c;
    /* Use this field for confirmation numbers or PO numbers
    */
    global String Confirmation_Number__c;
    global Date Payment_Date__c;
    global Boolean Are_affiliates_covered__c;
    global String Is_this_a_QL_or_partner_NDA__c;
    global String If_QL_are_there_modifications__c;
    global String Requisition_Number__c;
    global String Opportunity_AM_Email__c;
    global String Affiliates_Covered_Under_THIS_NDA__c;
    global String Type_of_Remittance__c;
    global String Type_of_Affiliate_Program__c;
    global Boolean Flyer__c;
    global String Website__c;
    global String Lump_Sum_Portal__c;
    global String Lump_Sum_Portal_Link__c;
    global Decimal Marketing_Service_Fee__c;
    global String Renter_Or_Home_Owner__c;
    global List<ActivityHistory> ActivityHistories;
    global List<Approval> Approvals;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<ContractContactRole> ContractContactRoles;
    global List<ContractFeed> Feeds;
    global List<ContractHistory> Histories;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<EventRelation> EventRelations;
    global List<Marketing_Event__c> Marketing_Activities__r;
    global List<NetworkActivityAudit> ParentEntities;
    global List<NetworkUserHistoryRecent> NetworkUserHistoryRecentToRecord;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<Task> Tasks;
    global List<TaskRelation> TaskRelations;
    global List<TopicAssignment> TopicAssignments;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<OutgoingEmail> RelatedTo;
    global List<TaskChangeEvent> What;
    global List<TaskRelationChangeEvent> Relation;

    global Contract () 
    {
    }
}