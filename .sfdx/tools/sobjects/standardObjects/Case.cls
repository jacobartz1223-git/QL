// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Case {
    global Id Id;
    global Boolean IsDeleted;
    global Case MasterRecord;
    global Id MasterRecordId;
    global String CaseNumber;
    global Contact Contact;
    global Id ContactId;
    global Account Account;
    global Id AccountId;
    global Asset Asset;
    global Id AssetId;
    global SObject Source;
    global Id SourceId;
    global BusinessHours BusinessHours;
    global Id BusinessHoursId;
    global Case Parent;
    global Id ParentId;
    global String SuppliedName;
    global String SuppliedEmail;
    global String SuppliedPhone;
    global String SuppliedCompany;
    global String Type;
    global RecordType RecordType;
    global Id RecordTypeId;
    global String Status;
    global String Reason;
    global String Origin;
    global String Language;
    global Boolean IsVisibleInSelfService;
    global String Subject;
    global String Priority;
    global String Description;
    global Boolean IsClosed;
    global Datetime ClosedDate;
    global Boolean IsEscalated;
    global Boolean HasCommentsUnreadByOwner;
    global Boolean HasSelfServiceComments;
    global SObject Owner;
    global Id OwnerId;
    global Boolean IsClosedOnCreate;
    global Boolean IsSelfServiceClosed;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global String ContactPhone;
    global String ContactMobile;
    global String ContactEmail;
    global String ContactFax;
    global String Comments;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global PartnerNetworkConnection ConnectionReceived;
    global Id ConnectionReceivedId;
    global PartnerNetworkConnection ConnectionSent;
    global Id ConnectionSentId;
    global Boolean My_Submitted_Case__c;
    global String Reference_Id__c;
    global Boolean Enable_Case_Notifications__c;
    global Double Priority_Rank__c;
    global String Type_Priority__c;
    global String Size__c;
    global String Case_Resolution_Time__c;
    /* User requesting the case to be logged.
    */
    global User Requester__r;
    /* User requesting the case to be logged.
    */
    global Id Requester__c;
    global String Urgency__c;
    global String Channel_Type_Impacted__c;
    global String Impact_Sub_Type__c;
    /* Internal = Audience within QL, External = Audience outside of QL (will not include loan-level information)
    */
    global String Audience__c;
    global String Frequency__c;
    global String Goal_Stage__c;
    global Date Goal_Due_Date__c;
    /* This is optional - specifically what you would like the report name to be (if different from name entered in 'Subject" field)
    */
    global String Report_Name__c;
    global String Channel_s_Impacted__c;
    /* How is this impacting the business?  What decisions are we looking to make utilizing this data?
    */
    global String Why__c;
    /* No = If data is needed for a scheduled meeting or call.  Yes = If data is not urgent but needed within a couple of days of the date listed.
    */
    global String Is_Goal_Due_Date_Flexible__c;
    global String Case_Subject_Category__c;
    global Fulfillment__c Fulfillment__r;
    global Id Fulfillment__c;
    global String Sub_Impact__c;
    global Boolean FOCUS__c;
    global String Pace_Category__c;
    global Boolean Error_Message__c;
    global Date Actual_Release_Date__c;
    global Case Project_Name__r;
    global Id Project_Name__c;
    global String Phase__c;
    global Case Dependent_Case__r;
    global Id Dependent_Case__c;
    global String Case_Name__c;
    global String Release_picklist__c;
    /* The release this project or feature will be included in. Click on the link to see Release details including the other projects and associated cases involved in Release, expected date of Release, etc.If no Release provided, one has not been assigned or n/a
    */
    global Release__c Release__r;
    /* The release this project or feature will be included in. Click on the link to see Release details including the other projects and associated cases involved in Release, expected date of Release, etc.If no Release provided, one has not been assigned or n/a
    */
    global Id Release__c;
    global String Release1__c;
    global String Assigned_Release__c;
    global String Project_Name2__c;
    global String ParentProjectRelease__c;
    global String PhaseParent__c;
    global String template_URL__c;
    global String new_doc_URL__c;
    global String Lift_Category__c;
    global String Error_Message_Received__c;
    /* You can add record numbers or copy and paste URL links into this field
    */
    global String Example_s_of_records_this_has_occurred__c;
    /* have you noticed that you or others receive this error when you try to execute a specific action? If so, please explain
    */
    global String Is_there_a_pattern_of_when_this_occurs__c;
    global Boolean Reviewed__c;
    global String Dependent_Case_Status__c;
    global Double Count_of_Child_Cases__c;
    /* Is there a process or work around related to this case that is currently taking place?
    */
    global String What_is_the_current_process__c;
    global Datetime Projected_Completion_Date__c;
    global String Rocket_Pro_Partner__c;
    global Feature__c Feature__r;
    global Id Feature__c;
    global Boolean Application_Submitted__c;
    global Contact Contact_Lookup__r;
    global Id Contact_Lookup__c;
    global String Contact_Record_Type__c;
    global String Does_the_Agent_Lease_or_Own__c;
    global Boolean Fees_Paid__c;
    global Boolean Filing_Status__c;
    global String Fingerprint_Status__c;
    global Boolean Fingerprints_Completed__c;
    global Boolean Floor_Plan_In_Attachments__c;
    global String Knowledge_Assessment_Exam_Status__c;
    global String Knowledge_Assessment_Training_Status__c;
    global Double License_Agreement_Count__c;
    global Datetime License_Agreement_Date__c;
    global Boolean License_Agreement_Info_Recieved__c;
    global Boolean License_Transferred_to_Bling__c;
    global Double License_Update_Count__c;
    global Datetime License_Update_Date__c;
    global Boolean License_Verified__c;
    global String Licensed_SAFE_Exam_Within_last_5_Years__c;
    global Double Licensing_Count__c;
    global Datetime Licensing_Date__c;
    global Boolean Licensing_requirements_email_sent__c;
    global Date MLO_Signature_Date__c;
    global Boolean MLO_Signed__c;
    global Boolean MLO_amendment_completed__c;
    global String MU4_Status__c;
    global Boolean Mailing_Address_Confirmed__c;
    global Date Mortgage_Basics_Date_Acquired__c;
    global Double Mortgage_Basics_Training_Score__c;
    global String Mortgage_Basics_Training_Status__c;
    global Double NMLS_Account_Setup_Count__c;
    global Datetime NMLS_Account_Setup_Date__c;
    global Double New_Count__c;
    global Datetime New_Date__c;
    global Boolean Onboarding_Guide_Email_Sent__c;
    global Date Products_Pricing_Date_Acquired__c;
    global String Products_Pricing_Exam_Status__c;
    global Double Products_Pricing_Training_Score__c;
    global String Products_Pricing_Training_Status__c;
    global Boolean QL_signature_obtained__c;
    global String Recommended_Ownership__c;
    global Boolean Relationship_switch_email_sent__c;
    global String Rocket_Pro_Exam_Status__c;
    global Date Rocket_Pro_Training_Completion_Date__c;
    global Double Rocket_Pro_Training_Score__c;
    global String Rocket_Pro_Training_Status__c;
    global String SAFE_Exam_Status__c;
    global String SAFE_Training_Status__c;
    global Datetime SAFe_Exam_Date__c;
    global Double Square_Footage_of_all_Offices__c;
    global String Sub_Case_Reason__c;
    global Contact Who_is_listed_on_the_Lease_Title__r;
    global Id Who_is_listed_on_the_Lease_Title__c;
    global String Objective__c;
    global String Closing_Notes__c;
    global Double Case_Count__c;
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<Case> Cases1__r;
    global List<Case> Cases;
    global List<Case> Cases__r;
    global List<CaseArticle> CaseArticles;
    global List<CaseComment> CaseComments;
    global List<CaseContactRole> CaseContactRoles;
    global List<CaseExternalDocument> CaseExternalDocuments;
    global List<CaseFeed> Feeds;
    global List<CaseGatewayRequest> CaseGatewayRequests;
    global List<CaseHistory> Histories;
    global List<CaseShare> Shares;
    global List<CaseSolution> CaseSolutions;
    global List<CaseTeamMember> TeamMembers;
    global List<CaseTeamTemplateRecord> TeamTemplateRecords;
    global List<Claim> Claims;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<CombinedAttachment> CombinedAttachments;
    global List<Contact> Contacts__r;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EmailMessage> EmailMessages;
    global List<EmailMessage> Emails;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<EventRelation> EventRelations;
    global List<LiveChatTranscript> LiveChatTranscripts;
    global List<NetworkActivityAudit> ParentEntities;
    global List<NetworkUserHistoryRecent> NetworkUserHistoryRecentToRecord;
    global List<OpenActivity> OpenActivities;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<SocialPost> Posts;
    global List<SurveySubject> SurveySubjectEntities;
    global List<Task> Tasks;
    global List<TaskRelation> TaskRelations;
    global List<TopicAssignment> TopicAssignments;
    global List<AgentWork> WorkItem;
    global List<CaseChangeEvent> Parent;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<Knowledge__kav> Source;
    global List<LiveChatTranscriptChangeEvent> Case;
    global List<Loan__c_hd> Parent;
    global List<PartnerNetworkRecordConnection> LocalRecord;
    global List<PartnerNetworkRecordConnection> ParentRecord;
    global List<PartnerNetworkRecordConnection> PartnerRecord;
    global List<PendingServiceRouting> WorkItem;
    global List<TaskChangeEvent> What;
    global List<TaskRelationChangeEvent> Relation;

    global Case () 
    {
    }
}