// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Contact {
    global Id Id;
    global Boolean IsDeleted;
    global Contact MasterRecord;
    global Id MasterRecordId;
    global Account Account;
    global Id AccountId;
    global Boolean IsPersonAccount;
    global String LastName;
    global String FirstName;
    global String Salutation;
    global String Name;
    global RecordType RecordType;
    global Id RecordTypeId;
    global String OtherStreet;
    global String OtherCity;
    global String OtherState;
    global String OtherPostalCode;
    global String OtherCountry;
    global String OtherStateCode;
    global String OtherCountryCode;
    global Double OtherLatitude;
    global Double OtherLongitude;
    global String OtherGeocodeAccuracy;
    global Address OtherAddress;
    global String MailingStreet;
    global String MailingCity;
    global String MailingState;
    global String MailingPostalCode;
    global String MailingCountry;
    global String MailingStateCode;
    global String MailingCountryCode;
    global Double MailingLatitude;
    global Double MailingLongitude;
    global String MailingGeocodeAccuracy;
    global Address MailingAddress;
    global String Phone;
    global String Fax;
    global String MobilePhone;
    global String HomePhone;
    global String OtherPhone;
    global String AssistantPhone;
    global Contact ReportsTo;
    global Id ReportsToId;
    global String Email;
    global String Title;
    global String Department;
    global String AssistantName;
    global String LeadSource;
    global Date Birthdate;
    global String Description;
    global User Owner;
    global Id OwnerId;
    /* The contact has formally opted out of QL mass marketing/communications
    */
    global Boolean HasOptedOutOfEmail;
    global Boolean HasOptedOutOfFax;
    /* The contact has formally requested to not be called
    */
    global Boolean DoNotCall;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Date LastActivityDate;
    global Datetime LastCURequestDate;
    global Datetime LastCUUpdateDate;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global String EmailBouncedReason;
    global Datetime EmailBouncedDate;
    global Boolean IsEmailBounced;
    global String PhotoUrl;
    global String Jigsaw;
    global String JigsawContactId;
    global PartnerNetworkConnection ConnectionReceived;
    global Id ConnectionReceivedId;
    global PartnerNetworkConnection ConnectionSent;
    global Id ConnectionSentId;
    global Individual Individual;
    global Id IndividualId;
    global Boolean Has_Call_or_F2F__c;
    /* Details of gift restrictions
    */
    global String Gift_Restriction_Details__c;
    global String Affiliation__c;
    global String Email_Other__c;
    global String Status__c;
    global Boolean Attended_Implementation__c;
    global String Disposition__c;
    global String Assistant_Email__c;
    global Boolean Panorama_Email_Opt_Out__c;
    global String Contact_Website__c;
    global Boolean Marketing_Materials__c;
    global Boolean Gift_Restriction__c;
    global Date First_Activity_Date__c;
    global Date Last_Activity_Date__c;
    global String Team__c;
    global String CTI_Other_Phone__c;
    global Campaign Original_Campaign__r;
    global Id Original_Campaign__c;
    global String Opportunity_Id__c;
    global String Preferred_Name__c;
    global Date First_Referral_Date__c;
    global Date Last_Referral_Date__c;
    global Date Last_Status_Change_Date__c;
    global Double Number_of_Calls__c;
    global String Suffix__c;
    global Double Number_of_Campaigns__c;
    global String CTI_Phone__c;
    global Datetime Opt_Out_Date__c;
    global String CTI_Mobile_Phone__c;
    global Double Number_of_Email_Opens_External__c;
    global Double Number_of_Emails__c;
    global Double Number_of_F2Fs__c;
    global Double Number_of_Referrals__c;
    global Team_Member__c Preferred_Banker__r;
    global Id Preferred_Banker__c;
    global String Role__c;
    global Boolean Duplicate_Check__c;
    global String Assigned_Market_Manager__c;
    global String Assigned_Relationship_Manager__c;
    global Opportunity Opportunity_Contact_Role__r;
    global Id Opportunity_Contact_Role__c;
    global Zip_Code__c MailingPostalCodeLookup__r;
    global Id MailingPostalCodeLookup__c;
    global State__c MailingStateLookup__r;
    global Id MailingStateLookup__c;
    global Broker_Import_File__c Broker_Import_File__r;
    global Id Broker_Import_File__c;
    global Contact Assistant_Name__r;
    global Id Assistant_Name__c;
    global String Banker_Activity__c;
    global String Location_Code__c;
    global String Schwab_ID__c;
    global Boolean ERC_Spring__c;
    global Boolean ERC_Fall__c;
    global Double Number_of_OCRs__c;
    global Boolean SHRM__c;
    global String ERC_Spring1__c;
    global String Fall_ERC__c;
    global Double Location__Latitude__s;
    global Double Location__Longitude__s;
    global Location Location__c;
    global Double Age__c;
    global String LID__LinkedIn_Company_Id__c;
    global String LID__LinkedIn_Member_Token__c;
    global Contact relationship_manager__r;
    global Id relationship_manager__c;
    /* Test Description
    */
    global Decimal rh2__Currency_Test__c;
    global rh2__PS_Describe__c rh2__Describe__r;
    global Id rh2__Describe__c;
    global Decimal rh2__Formula_Test__c;
    global Double rh2__Integer_Test__c;
    global Boolean Shared_Relo_MI_Contact__c;
    /* Do we want this contact to receive our partner gifts (eg: New Year, Spring, Summer, Fall)?
If Yes, please ensure that mailing address is correct.
    */
    global Boolean Partner_Gift__c;
    /* Displays ZoomInfo Has Moved data point. Denotes whether the lead/contact has moved from the current company. Values are Yes, Uncertain, No.
    */
    global String zisf__Person_Has_Moved__c;
    global String zisf__ZoomInfo_Complete_Status__c;
    /* ZoomInfo Email address for the Contact record.
    */
    global String zisf__ZoomInfo_Email__c;
    /* Date/time refers to last time ZoomInfo Clean ran for record.
    */
    global Datetime zisf__ZoomInfo_Last_Clean_Run__c;
    /* ZoomInfo Phone for the Contact record.
    */
    global String zisf__ZoomInfo_Phone__c;
    global String zisf__Zoom_Clean_Status__c;
    global String zisf__zoom_id__c;
    global Datetime zisf__zoom_lastupdated__c;
    global String AA__c;
    /* This field can be used for important contact details (ex. best time to contact, personal interests, etc.). This should not replace comments or takeaways from an activity with the contact.
    */
    global String Notes__c;
    global String Work__c;
    /* Agent Type equals Broker if the state type equals Broker or if they checked the box asking if they have TMs originating
    */
    global String Agent_Type__c;
    global String Agent_or_TM_in_an_Agent_Office__c;
    global String Are_you_currently_licensed__c;
    global Branch__c Branch__r;
    global Id Branch__c;
    global Boolean Broker_License_Required__c;
    global String Designated_Mailing_Address__c;
    global String Do_you_have_TMs_originating__c;
    global Datetime Fingerprints_Expiration_Date__c;
    global Datetime Fingerprints_Renewal_Date__c;
    global String Home_Address__c;
    global String Mailing_Address__c;
    global String Mortgage_License_Status__c;
    global String NMLS__c;
    global String Office_Address__c;
    global Case On_boarding_Case__r;
    global Id On_boarding_Case__c;
    global String Originated_mortgages_with_State_Farm__c;
    global String Preferred_Phone__c;
    global Boolean Regulator_Communication__c;
    global String Rocket_Pro_Email__c;
    global String SF_Status__c;
    global String State_Branch_Requirement__c;
    global String State_Farm_Email__c;
    global String State_Farm_State_Agent_Code__c;
    global String State_Type__c;
    global String Wave__c;
    global String License_Status__c;
    global String Onboarding_Link__c;
    global Boolean Take_Off_Call_List__c;
    /* The contact is no longer interested in our program
    */
    global Boolean Not_Interested__c;
    global String Workday_Common_ID__c;
    global String Preferred_Email__c;
    /* The contact has agreed to be texted by QL
    */
    global String Consent_To_Text__c;
    /* An MU 1 Prep Session is with a status of "Scheduled"
    */
    global Double MU1_In_Process__c;
    global String Confirmed_Next_Steps_with_Client__c;
    global String Licensed_State_s__c;
    global Date Background_Check_Completed_Date__c;
    global Date Background_Check_Initiated_Date__c;
    global String Background_Check_Status__c;
    global Date Fair_Lending_Training_Date_Acquired__c;
    global Double Fair_Lending_Training_Score__c;
    global String Fair_Lending_Training_Status__c;
    global String Filing_Status__c;
    global Boolean Fingerprints_Completed__c;
    global Boolean Fingerprints_Successfully_Scheduled__c;
    global String Kick_off_Call_Status__c;
    global Boolean License_Application_Completed__c;
    global Date MLO_Signature_Date__c;
    global Boolean MLO_Signed__c;
    global Boolean MU4_Completed__c;
    global Date Products_Pricing_Date_Acquired__c;
    global String Products_Pricing_Exam_Status__c;
    global Double Products_Pricing_Training_Score__c;
    global Date Rocket_Pro_Training_Completion_Date__c;
    global Double Rocket_Pro_Training_Score__c;
    global String Rocket_Pro_Training_Status__c;
    global Date SAFe_Exam_Date__c;
    global String SAFe_Exam_Status__c;
    global Boolean Training_Materials_Sent__c;
    global Boolean Training_Sign_Up_Email_Sent__c;
    global Boolean W9_Signed__c;
    global String WD_Furthest_Stage_Entered__c;
    global String WD_Has_Used_Create_Account_URL__c;
    global String WD_Signature_Status__c;
    global String WD_W_9_Signature_Date_and_Time__c;
    global String Workday_Document__c;
    global Date Agent_License_Expiration_Date__c;
    global Boolean Filing_Submitted_Completed__c;
    global Boolean Agent_Logged_into_Workday__c;
    global Datetime Onboarding_Status_Last_Modified_Date__c;
    global String Onboarding_Status__c;
    global Double Approved_State_Licenses__c;
    /* The contact no longer works with one of our affiliates
    */
    global Boolean Inactive__c;
    global User PDM__r;
    global Id PDM__c;
    global User AE__r;
    global Id AE__c;
    global String Fingerprints_Status__c;
    global Double Number_of_Broker_Licenses__c;
    global String Ready_to_Originate_Status__c;
    global String Rocket_Pro_Partner__c;
    global Date RTO_Date__c;
    global String Rocket_Pro_Icon__c;
    global Datetime Junk_Field__c;
    global Date Last_PDM_AE_Call__c;
    global Date Last_PDM_AE_Email__c;
    global String Test_RTO_Status__c;
    global String Workday_Email__c;
    global Date Consent_To_Text_Date__c;
    global Double Total_Clients__c;
    global Double Homeowner_Policies__c;
    global User Licensing_Specialist__r;
    global Id Licensing_Specialist__c;
    global Datetime Homeowner_Policies_Date_Modified__c;
    global Datetime Total_Clients_Date_Modified__c;
    /* Agents that were required to take the Knowledge Assessment training, Mortgage Basics training, or training was not required at time of onboarding. Equivalent to completing Products and Pricing training for purpose of RTO.
    */
    global Boolean Historical_Products_and_Pricing_Training__c;
    global String Are_your_TM_currently_mortgage_licensed__c;
    global String Broker_Communication_Flag__c;
    global Boolean Broker_Communication_Verified__c;
    global String Do_you_have_your_Broker_Licensed__c;
    global String Do_you_plan_to_self_service__c;
    global Double How_many_years_of_mortgage_experience_do__c;
    global String Mortgage_Licensed__c;
    global Boolean TSSM_Outreach__c;
    global Double AGENT_COUNT__c;
    global Double Call_Conversion__c;
    global Double Days_in_Onboarding_Status__c;
    global String Why_Not__c;
    global Double Prior_Days_in_Onboarding_Status__c;
    global String Prior_Status_Value__c;
    global Double Hours_in_Onboarding_Status__c;
    global String Onboarding_Status_Picklist__c;
    global Double Prior_Hours_in_Onboarding_Status__c;
    global String Agent_Type_Formula__c;
    /* The License Record for the Agent has a status of "Deficiency"
    */
    global Double MU1_Deficiency__c;
    /* The License Record for the Agent has a status of "Approved"
    */
    global Double MU1_Approved__c;
    /* The License Record for the Agent has a status of "Pending"
    */
    global Double MU1_Waiting__c;
    global String Does_Agent_Qualify__c;
    global String Saw_Webinar_Group_Session__c;
    global String Net_Worth_Financial_Statements__c;
    global String Entity_Bank_Set_up__c;
    global String Surety_Bond__c;
    global String Registered_Agent__c;
    global String NMLS_MU1_Form__c;
    global String Fingerprint_Forms__c;
    global String State_Specific_Documents__c;
    global String Certificate_of_Good_Standing__c;
    global String Qualified_Individual_Confirmed__c;
    global Boolean Exam_Required__c;
    global Date Exam_Date__c;
    global String Exam_Status__c;
    global String Qualified_Individual__c;
    /* Broker NMLS Number
    */
    global String Company_NMLS__c;
    global Double Approved_Broker_State_Licenses__c;
    global Double How_Many_W_2s__c;
    global String Not_Interested_Reason__c;
    global Boolean RTO__c;
    global Boolean Setup_Formula__c;
    global String Branch_NMLS_ID__c;
    global String Marketing_Cloud_Link__c;
    global String Work_Phone_Number__c;
    global String Cell_Phone_Number__c;
    global String Job_Title__c;
    global String Are_you_part_of_a_real_estate_brokerage__c;
    global String Real_Estate_License_Number__c;
    global String Company_Name__c;
    global String Dietary_Restrictions__c;
    global List<AcceptedEventRelation> AcceptedEventRelations;
    global List<Account> Accounts2__r;
    global List<Account> Accounts3__r;
    global List<Account> Accounts__r;
    global List<Account> Accounts1__r;
    global List<Account> Accounts4__r;
    global List<Account> Accounts5__r;
    global List<AccountContactRole> AccountContactRoles;
    global List<ActivityHistory> ActivityHistories;
    global List<Agent_MRQ__c> Agent_MRQs__r;
    global List<Asset> Assets;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<Award> Awards;
    global List<Branch__c> Branches__r;
    global List<BusinessLicense> BusinessLicenses;
    global List<CampaignMember> CampaignMembers;
    global List<Case> Cases;
    global List<Case> Help_Cases__r;
    global List<Case> Cases__r;
    global List<CaseContactRole> CaseContactRoles;
    global List<ClaimParticipant> CPContacts;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<CombinedAttachment> CombinedAttachments;
    global List<Contact> Contacts__r;
    global List<Contact> Contacts1__r;
    global List<ContactFeed> Feeds;
    global List<ContactHistory> Histories;
    global List<ContactRequest> ContactRequests;
    global List<ContactShare> Shares;
    global List<Contact_Affiliation__c> Contact_Affiliations__r;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<Contract> Contracts__r;
    global List<Contract> ContractsSigned;
    global List<ContractContactRole> ContractContactRoles;
    global List<DeclinedEventRelation> DeclinedEventRelations;
    global List<DuplicateRecordItem> DuplicateRecordItems;
    global List<EmailMessageRelation> EmailMessageRelations;
    global List<EmailStatus> EmailStatuses;
    global List<Email_Tracking__c> Email_Tracking_Contact__r;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Event> Events;
    global List<EventRelation> EventRelations;
    global List<EventWhoRelation> EventWhoRelations;
    global List<Fulfillment__c> Fulfillments__r;
    global List<IdentityDocument> IdentityDocumentDetails;
    global List<InsurancePolicyParticipant> PrimaryParticipants;
    global List<InsurancePolicyParticipant> RelatedParticipants;
    global List<InsuranceProfile> InsuranceProfiles;
    global List<Lead> Leads__r;
    global List<License__c> Licenses__r;
    global List<ListEmailIndividualRecipient> ListEmailIndividualRecipients;
    global List<LiveChatTranscript> LiveChatTranscripts;
    global List<Marketing_Event__c> Marketing_Activities__r;
    global List<Marketing_Event__c> Marketing_Events__r;
    global List<Marketing_Event__c> Marketing_Events1__r;
    global List<MktgBiz_Request__c> MktgBiz_Requests__r;
    global List<NetworkActivityAudit> ParentEntities;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<Opportunity> Opportunities;
    global List<Opportunity> Opportunities5__r;
    global List<Opportunity> Opportunities1__r;
    global List<Opportunity> Opportunities2__r;
    global List<Opportunity> Opportunities3__r;
    global List<Opportunity> Opportunities4__r;
    global List<Opportunity> Opportunities__r;
    global List<Opportunity> Opportunities6__r;
    global List<OpportunityContactRole> OpportunityContactRoles;
    global List<OpportunityLineItem> Adventure_Package__r;
    global List<Opportunity_Contact_Role__c> Opportunity_Contact_Roles__r;
    global List<OutgoingEmailRelation> OutgoingEmailRelations;
    global List<PersonEducation> PersonEducations;
    global List<PersonLifeEvent> PersonLifeEvents;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<Producer> ProducersContact;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<Referral_Lead__c> Referral_Leads_Broker__r;
    global List<Referral_Lead__c> Referral_Leads__r;
    global List<Reporting_Requirements__c> Reporting_Requirements__r;
    global List<Session__c> Sessions__r;
    global List<SocialPersona> Personas;
    global List<SocialPost> Posts;
    global List<Status_Analytics__c> Status_Analytics__r;
    global List<SurveyInvitation> SurveyInvitations;
    global List<SurveySubject> SurveySubjectEntities;
    global List<Survey__c> Surveys__r;
    global List<Task> Tasks;
    global List<TaskRelation> TaskRelations;
    global List<TaskWhoRelation> TaskWhoRelations;
    global List<TopicAssignment> TopicAssignments;
    global List<UndecidedEventRelation> UndecidedEventRelations;
    global List<User> Users;
    global List<UserEmailPreferredPerson> PersonRecord;
    global List<rh2__Filter__c> rh2__Criterias__r;
    global List<rh2__PS_Describe__c> rh2__Describes1__r;
    global List<rh2__PS_Describe__c> rh2__Describes2__r;
    global List<rh2__PS_Describe__c> rh2__Describes__r;
    global List<rh2__PS_Rollup_Conditions__c> rh2__Rollup_Conditions__r;
    global List<zisf__ZoomInfo__c> zisf__ZoomInfo_Records__r;
    global List<Account> PersonContact;
    global List<AccountContactRoleChangeEvent> Contact;
    global List<ActivityHistory> PrimaryWho;
    global List<AgentWork> WorkItem;
    global List<AssetChangeEvent> Contact;
    global List<CampaignMember> LeadOrContact;
    global List<CampaignMemberChangeEvent> Contact;
    global List<CaseTeamMember> Member;
    global List<Contact> ReportsTo;
    global List<ContentVersion> FirstPublishLocation;
    global List<ContractChangeEvent> CustomerSigned;
    global List<EventChangeEvent> Who;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<Lead> ConvertedContact;
    global List<LiveChatTranscriptChangeEvent> Contact;
    global List<MatchingInformation> SFDCId;
    global List<OpenActivity> PrimaryWho;
    global List<OpportunityChangeEvent> Contact;
    global List<OutgoingEmail> Who;
    global List<PartnerNetworkConnection> Contact;
    global List<PartnerNetworkRecordConnection> LocalRecord;
    global List<PartnerNetworkRecordConnection> ParentRecord;
    global List<PartnerNetworkRecordConnection> PartnerRecord;
    global List<PendingServiceRouting> WorkItem;
    global List<PersonLifeEvent> RelatedPerson;
    global List<SurveyResponse> Submitter;
    global List<TaskChangeEvent> Who;
    global List<TaskRelationChangeEvent> Relation;
    global List<UserChangeEvent> Contact;

    global Contact () 
    {
    }
}