// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Lead {
    global Id Id;
    global Boolean IsDeleted;
    global Lead MasterRecord;
    global Id MasterRecordId;
    global String LastName;
    global String FirstName;
    global String Salutation;
    global String Name;
    global RecordType RecordType;
    global Id RecordTypeId;
    global String Title;
    global String Company;
    global String Street;
    global String City;
    global String State;
    global String PostalCode;
    global String Country;
    global String StateCode;
    global String CountryCode;
    global Double Latitude;
    global Double Longitude;
    global String GeocodeAccuracy;
    global Address Address;
    global String Phone;
    global String MobilePhone;
    global String Fax;
    global String Email;
    global String Website;
    global String PhotoUrl;
    global String Description;
    global String LeadSource;
    global String Status;
    global String Industry;
    global String Rating;
    global Decimal AnnualRevenue;
    global Integer NumberOfEmployees;
    global SObject Owner;
    global Id OwnerId;
    global Boolean HasOptedOutOfEmail;
    global Boolean IsConverted;
    global Date ConvertedDate;
    global Account ConvertedAccount;
    global Id ConvertedAccountId;
    global Contact ConvertedContact;
    global Id ConvertedContactId;
    global Opportunity ConvertedOpportunity;
    global Id ConvertedOpportunityId;
    global Boolean IsUnreadByOwner;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Date LastActivityDate;
    global Boolean DoNotCall;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global String Jigsaw;
    global String JigsawContactId;
    global PartnerNetworkConnection ConnectionReceived;
    global Id ConnectionReceivedId;
    global PartnerNetworkConnection ConnectionSent;
    global Id ConnectionSentId;
    global String EmailBouncedReason;
    global Datetime EmailBouncedDate;
    global Individual Individual;
    global Id IndividualId;
    global String Affiliations__c;
    global String Direct_Phone__c;
    global String Disposition__c;
    global Date First_Activity_Date__c;
    global Date First_Referral_Date__c;
    global Date Last_Activity_Date__c;
    global Date Last_Referral_Date__c;
    global Date Last_Status_Change_Date__c;
    global Double Number_of_Calls__c;
    global Double Number_of_Campaigns__c;
    global Double Number_of_Email_Opens_External__c;
    global Double Number_of_Emails__c;
    global Double Number_of_F2Fs__c;
    global Double Number_of_Referrals__c;
    global Campaign Original_Campaign__r;
    global Id Original_Campaign__c;
    global Team_Member__c Preferred_Banker__r;
    global Id Preferred_Banker__c;
    global String Preferred_Name__c;
    global String Role__c;
    global Boolean Duplicate_Check__c;
    global String CTI_Phone__c;
    global String CTI_Direct_Phone__c;
    global String CTI_Mobile_Phone__c;
    global Contact Relationship_Manager__r;
    global Id Relationship_Manager__c;
    global String LID__LinkedIn_Company_Id__c;
    global String LID__LinkedIn_Member_Token__c;
    /* Displays ZoomInfo Has Moved data point. Denotes whether the lead/contact has moved from the current company. Values are Yes, Uncertain, No.
    */
    global String zisf__Person_Has_Moved__c;
    global String zisf__ZoomInfo_Complete_Status__c;
    /* ZoomInfo Email Address for the Lead record.
    */
    global String zisf__ZoomInfo_Email__c;
    global String zisf__ZoomInfo_Industry__c;
    /* Date/time refers to last time ZoomInfo Clean ran for record.
    */
    global Datetime zisf__ZoomInfo_Last_Clean_Run__c;
    /* ZoomInfo Phone for the Lead record.
    */
    global String zisf__ZoomInfo_Phone__c;
    /* When this value is set to "True", an incoming Lead with blank fields will be automatically appended with available data by ZoomInfo.
    */
    global Boolean zisf__ZoomInfo_Trigger__c;
    global String zisf__Zoom_Clean_Status__c;
    global String zisf__zoom_id__c;
    global Datetime zisf__zoom_lastupdated__c;
    global String Email_Domain__c;
    global Boolean Partner_Domain__c;
    global String Personal_NMLS_ID__c;
    global String Company_NMLS_ID__c;
    global String Select_the_state_jurisdiction_s_in_whic__c;
    global String Sub_Status__c;
    global String Rocket_Pro_Partner__c;
    global String Work_Email__c;
    global String Agent_Type__c;
    global String Are_you_part_of_a_Real_Estate_Brokerage__c;
    global String Real_Estate_License_Number__c;
    global String Work_Phone_Number__c;
    global String Cell_Phone_Number__c;
    global String Job_Title__c;
    global List<AcceptedEventRelation> AcceptedEventRelations;
    global List<ActivityHistory> ActivityHistories;
    global List<Agent_MRQ__c> Agent_MRQs__r;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<CampaignMember> CampaignMembers;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<DeclinedEventRelation> DeclinedEventRelations;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global List<EmailMessageRelation> EmailMessageRelations;
    global List<EmailStatus> EmailStatuses;
    global List<Email_Tracking__c> Email_Tracking__r;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<EventRelation> EventRelations;
    global List<EventWhoRelation> EventWhoRelations;
    global List<LeadFeed> Feeds;
    global List<LeadHistory> Histories;
    global List<LeadShare> Shares;
    global List<ListEmailIndividualRecipient> ListEmailIndividualRecipients;
    global List<LiveChatTranscript> LiveChatTranscripts;
    global List<NetworkActivityAudit> ParentEntities;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<OutgoingEmailRelation> OutgoingEmailRelations;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<Referral_Lead__c> Referrals__r;
    global List<SocialPersona> Personas;
    global List<SocialPost> Posts;
    global List<SurveyInvitation> SurveyInvitations;
    global List<SurveySubject> SurveySubjectEntities;
    global List<Task> Tasks;
    global List<TaskRelation> TaskRelations;
    global List<TaskWhoRelation> TaskWhoRelations;
    global List<TopicAssignment> TopicAssignments;
    global List<UndecidedEventRelation> UndecidedEventRelations;
    global List<UserEmailPreferredPerson> PersonRecord;
    global List<zisf__ZoomInfo__c> zisf__ZoomInfo_Records__r;
    global List<ActivityHistory> PrimaryWho;
    global List<AgentWork> WorkItem;
    global List<CampaignMember> LeadOrContact;
    global List<CampaignMemberChangeEvent> Lead;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> Who;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<LiveChatTranscriptChangeEvent> Lead;
    global List<OpenActivity> PrimaryWho;
    global List<OutgoingEmail> Who;
    global List<PartnerNetworkRecordConnection> LocalRecord;
    global List<PartnerNetworkRecordConnection> ParentRecord;
    global List<PartnerNetworkRecordConnection> PartnerRecord;
    global List<PendingServiceRouting> WorkItem;
    global List<SurveyResponse> Submitter;
    global List<TaskChangeEvent> Who;
    global List<TaskRelationChangeEvent> Relation;

    global Lead () 
    {
    }
}