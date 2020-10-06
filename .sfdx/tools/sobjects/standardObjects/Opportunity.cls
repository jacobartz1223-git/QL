// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Opportunity {
    global Id Id;
    global Boolean IsDeleted;
    global Account Account;
    global Id AccountId;
    global RecordType RecordType;
    global Id RecordTypeId;
    global String Name;
    global String Description;
    global String StageName;
    global Decimal Amount;
    global Decimal ExpectedRevenue;
    global Date CloseDate;
    global String Type;
    global String NextStep;
    global String LeadSource;
    global Boolean IsClosed;
    global Boolean IsWon;
    global String ForecastCategory;
    global String ForecastCategoryName;
    global Boolean HasOpportunityLineItem;
    global Pricebook2 Pricebook2;
    global Id Pricebook2Id;
    global User Owner;
    global Id OwnerId;
    global Territory2 Territory2;
    global Id Territory2Id;
    global Boolean IsExcludedFromTerritory2Filter;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Date LastActivityDate;
    global Integer FiscalQuarter;
    global Integer FiscalYear;
    global String Fiscal;
    global Contact Contact;
    global Id ContactId;
    global Datetime LastViewedDate;
    global Datetime LastReferencedDate;
    global PartnerNetworkConnection ConnectionReceived;
    global Id ConnectionReceivedId;
    global PartnerNetworkConnection ConnectionSent;
    global Id ConnectionSentId;
    global Boolean HasOpenActivity;
    global Boolean HasOverdueTask;
    /* Relocation:
Expected Opportunity * .18 = Total Number of Loans * 275,000 = Total Closed Volume * 0.03 = Expected Revenue

Mortgage Insiders:
Expected Opportunity * .09 = Total Number of Loans * 5,300 = Expected Revenue
    */
    global Decimal Expected_Revenue_Formula__c;
    global Decimal Expected_Revenue_Manual__c;
    global Date Go_Live_Date__c;
    global Double My_Opportunity__c;
    global Boolean MSA__c;
    global String Account_State__c;
    global Datetime Last_Status_Change_Date__c;
    global String Last_Status_Change_User__c;
    global Double Expected_US_Homeowner_Opportunity__c;
    global Double Expected_International_Opportunity__c;
    /* Choose team member if this partnership came from Relocation
    */
    global User Relocation_Team_Member_MI_Only__r;
    /* Choose team member if this partnership came from Relocation
    */
    global Id Relocation_Team_Member_MI_Only__c;
    global Decimal Underwriting_Fee__c;
    /* Email address for direct bill invoices
    */
    global String Direct_Bill_Invoices__c;
    /* Time until Active
Tier 1: 0-6 months
Tier 2: 6-12 months
Tier 3: 12-24 months
Tier 4: No information
    */
    global String Partner_Tier__c;
    /* What is the proposed Underwriting Fee
    */
    global Decimal Proposed_Underwriting_Fee__c;
    /* For partners with multiple processing addresses
    */
    global String Direct_Bill_Invoices_addtional__c;
    /* 1-2 sentence description of what the company does.
    */
    global String Company_Description__c;
    global Boolean At_Risk__c;
    global String Region__c;
    global String Dedicated_Toll_Free__c;
    global String Dedicated_URL__c;
    global String Dedicated_Marketing_Email__c;
    /* Please review Notes and Attachment for additional phone numbers
    */
    global Boolean Additional_Phone_Numbers__c;
    global String Opportunity_Overview__c;
    global Double Total_US_Homeowner_Moves__c;
    global Double Expected_Opportunity__c;
    global String Opportunity_Size__c;
    global Double Previous_Year_Total_Leads__c;
    global Boolean Channel_Match__c;
    global String Partner_Services__c;
    global String Status_Next_Steps__c;
    global Decimal Annual_Lending_Size__c;
    global Double Number_of_Branches__c;
    /* Number of clients the lending institution services
    */
    global Decimal Servicing_Book__c;
    global Double Number_of_Clients__c;
    global String Products__c;
    global String Other_Products__c;
    /* Previous mortgage provider/vendor
    */
    global String Incumbent_Provider__c;
    global Double Number_of_Agents__c;
    global String Channel__c;
    global User Account_Executive__r;
    global Id Account_Executive__c;
    global String Priority__c;
    global Decimal Asset_Base__c;
    global Double No_of_Employees__c;
    global Boolean Bank__c;
    global User Account_Manager__r;
    global Id Account_Manager__c;
    global User Client_Service_Manager__r;
    global Id Client_Service_Manager__c;
    global String Competition__c;
    global String Implementation_Pace__c;
    global String Owner__c;
    global String Channel_Type__c;
    global Account Other_Third_Party__r;
    global Id Other_Third_Party__c;
    global String Resources_Needed__c;
    global User Secondary_Account_Manager__r;
    global Id Secondary_Account_Manager__c;
    global String Sub_Status__c;
    global Account Third_Party__r;
    global Id Third_Party__c;
    global Double Total_US_Domestic_Moves__c;
    /* Does this company send emails that solely promote our offer?
    */
    global Boolean Dedicated_Email_Blast__c;
    global String Dedicated_Email_Blast_Details__c;
    /* Multi-partner email (non-dedicated)
    */
    global Boolean Shared_Email_E_Newsletter__c;
    global String Shared_Email_E_Newsletter_Details__c;
    /* Does the partner require their communications to be sent as a PDF?
    */
    global Boolean PDF_Blurb__c;
    global String Welcome_Email_Details__c;
    global String PDF_Blurb_Details__c;
    global String Specialized_Web_Placement_Details__c;
    global Double Contacts_with_Call_or_F2F__c;
    global String Benefit_Fair_Details__c;
    global Double Total_Members__c;
    global String Webinar_Details__c;
    global Double Active_Members__c;
    global String Direct_Mail_Details__c;
    global Double Members_w_Email__c;
    global String Sweepstakes_Details__c;
    global Date MSA_Start_Date__c;
    global String Print_Material_Detail__c;
    global Date MSA_End_Date__c;
    global String Lunch_Learn_Details__c;
    /* Are there benefit fairs that we can participate in?
    */
    global Boolean Benefit_Fair__c;
    /* Can we send direct mail to the company's employees?
    */
    global Boolean Direct_Mail__c;
    /* Can we present an educational seminar for their employees?
    */
    global Boolean Lunch_Learn__c;
    /* Does the company use print materials to promote our offer?  (flyers, posters, fatheads, etc.)
    */
    global Boolean Print_Material__c;
    /* Giving our offer enhanced placement above and beyond our offer posting (eg:banner ad)
    */
    global Boolean Specialized_Web_Placement__c;
    /* Will the company offer a dedicated QL webinar to their employees?
    */
    global Boolean Webinar__c;
    /* Will the partner send out an email introducing our benefit?
    */
    global Boolean Welcome_Email__c;
    /* Will the company promote a sweepstakes to their employees?
    */
    global Boolean Sweepstakes__c;
    global Date MSA_Renewal_Date__c;
    global Date Internal_Implementation_Complete__c;
    global Date External_Implementation_Complete__c;
    global Boolean MSA_Auto_Renew__c;
    global Decimal MSA_Total_Amount__c;
    global Decimal MSA_Monthly_Amount__c;
    global Boolean MSA_confirm_marketing__c;
    global String Market_Manager_Region__c;
    global Double Expected_US_Renter_Opportunity__c;
    global Decimal First_Year_Expected_Revenue__c;
    global Decimal Gift_Restriction_Amount__c;
    global String Gift_Restriction_Details__c;
    global Boolean Gift_Restriction__c;
    global Datetime Last_Partner_Status_Change_Date__c;
    global String Lead_Receipt_Method__c;
    global String Lead_Submission_Format__c;
    global String Partner_Attributes__c;
    global Double Total_Inbound_International__c;
    global Double Total_US_Program_Size__c;
    global Double Total_US_Renters__c;
    global String Who_Sends_Leads__c;
    global String State__c;
    global String City__c;
    global Boolean Has_Relocation_Team__c;
    global Boolean IHR_Partner__c;
    global String Implementation_Details__c;
    global Double Number_of_Offices__c;
    global String Postal_Code__c;
    global String Street__c;
    global String Website__c;
    global Double Contacts_with_no_Call_or_F2F__c;
    global String Assigned_Market_Manager__c;
    global String Assigned_Relationship_Manager__c;
    global Double Number_of_Contact_Calls__c;
    global Zip_Code__c PostalCodeLookup__r;
    global Id PostalCodeLookup__c;
    global State__c StateLookup__r;
    global Id StateLookup__c;
    global User Regional_Director__r;
    global Id Regional_Director__c;
    global Boolean Has_Activity__c;
    global Double Number_of_Contact_Emails__c;
    global Double Number_of_Contact_F2Fs__c;
    global Double Number_of_Contact_Referrals__c;
    global Boolean IHR_Power_Market__c;
    /* Number of people who will receive an email promoting our benefit
    */
    global Double Active_Email_Population__c;
    global Double Domestic_Employees__c;
    global Double Marketable_Population__c;
    /* What a partner calls its employees (Quicken Loans Team Members, Oracle Employees, BCBS Associates)
    */
    global String Employee_Greeting__c;
    /* Name used in Quicken Loans
    */
    global String QL_Name__c;
    /* Tier 1: Active, managed
Tier 2: Active, non-managed
Tier 3: Active, 3rd party
    */
    global String Tier__c;
    /* The email domain for this company example @quickenloans.com
    */
    global String Primary_Email_Domain__c;
    global User Marketing_Program_Lead__r;
    global Id Marketing_Program_Lead__c;
    global String Association_Type__c;
    global Date Partnership_Start_Date__c;
    global Decimal Current_Contract_Spend__c;
    global String Membership_Base__c;
    global Date Current_Contract_Start_Date__c;
    global Date Current_Contract_End_Date__c;
    global User Marketing_ProgramLead__r;
    global Id Marketing_ProgramLead__c;
    global Contact Team_Leader__r;
    global Id Team_Leader__c;
    global Boolean Huddle__c;
    global String Number_of_Team_Members__c;
    global Boolean Lunch_and_Learn__c;
    global Boolean Word_Blurb__c;
    global String Word_Blurb_Details__c;
    global String Word_Blurb_Frequency__c;
    global String PDF_Blurb_Frequency__c;
    global String Xbert_ID__c;
    global Double Number_Of_Service_Members__c;
    global String Service_Member_Greeting__c;
    global String Notes__c;
    global Double Age_of_Opportunity__c;
    global Date Approval_Sent__c;
    global Date Approved_Date__c;
    global Contact Contact_Presented_To__r;
    global Id Contact_Presented_To__c;
    global Contact Decision_Maker__r;
    global Id Decision_Maker__c;
    global Date Presentation_Date__c;
    global String Presenting_Method__c;
    global Contact Primary_Contact__r;
    global Id Primary_Contact__c;
    global Date Rejected_Date__c;
    global Date Target_Live_Date__c;
    global Date Verbal_Date__c;
    /* If logged in user the account manager, account executive or owner.
    */
    global Boolean Is_My_Opportunity__c;
    /* Number of days since last activity.
    */
    global Double Days_Since_Last_Activity__c;
    /* Days partner is active.
    */
    global Double Days_Active__c;
    global String Branch_Phone_Number__c;
    global String Branch_Code__c;
    global Boolean Opportunity_Funded__c;
    global String Schwab_ID__c;
    global String Branch_Type__c;
    global String Primary_Contact_Name__c;
    global Opportunity Parent_Opportunity__r;
    global Id Parent_Opportunity__c;
    global User PM__r;
    global Id PM__c;
    global Contact QL_Lead__r;
    global Id QL_Lead__c;
    global Boolean Stage_Validation_Override__c;
    global Boolean Onsites__c;
    global Boolean ISM_Books_Sent__c;
    global Boolean Internal_Perks_Posting__c;
    global Boolean Other__c;
    global String Other_Details__c;
    global String Onsites_Details__c;
    global String ISM_Books_Sent_Details__c;
    global Double of_Agents__c;
    global Boolean Application_Submitted__c;
    global String Country__c;
    global Double Discount__c;
    global Boolean Needs_Insurance__c;
    global Boolean Needs_Waiver__c;
    global String Promo_Code__c;
    global Decimal Adventure_Cost__c;
    global Decimal Closed_Loan_Revenue__c;
    global Double Closed_Loan_Total__c;
    global Decimal Closed_Loan_Volume__c;
    global Double Total_Number_of_Leads__c;
    global User Program_Manager__r;
    global Id Program_Manager__c;
    global String Industry__c;
    global Boolean LID__Is_Influenced__c;
    global String LID__LinkedIn_Company_Id__c;
    global String Business_Opportunity__c;
    global String Managed_or_Non_Managed__c;
    global String Primary_Contact_Email__c;
    global Boolean Current_Sponsor__c;
    global String Logo_Used__c;
    global Date Sponsorship_Paid_Date__c;
    global Decimal Membership_Dues__c;
    global Decimal Meeting_Fees__c;
    global String State_s__c;
    global String Twitter_Link__c;
    global String Facebook_Link__c;
    global String LinkedIn_Link__c;
    global Boolean Annual_Commitment__c;
    global String Logo_Location__c;
    global String Current_Biz_Dev_Members__c;
    global String Sponsorship_Details__c;
    global Decimal Sponsorship_Cost__c;
    global String Benefit_Fair1__c;
    global String Direct_Mail1__c;
    global String Group_Email_Frequency__c;
    global String Group_Email__c;
    global String Intranet_Posting_Frequency__c;
    global String Marketing_Tier__c;
    global String Onsites1__c;
    global String Print__c;
    global String SWP_Frequency__c;
    global String Social_Media__c;
    global String Solo_Email_Frequency__c;
    global String Solo_Email__c;
    global String Specialized_Web_Placement1__c;
    global String Webinar1__c;
    global Double Completed_Solo_Emails__c;
    global Double Completed_Specialized_Web_Placements__c;
    global Double Completed_Group_Emails__c;
    global String Social_Media_Details__c;
    global Boolean Exclude_Rocket_Homes__c;
    global String Benefit_Offer_Details__c;
    global Boolean Spanish_Content_Needed__c;
    global Boolean Partner_Gift_Sent__c;
    global String Partner_Gift_Sent_Details__c;
    global Boolean Newsletter__c;
    global Boolean Orientation_New_Hire__c;
    global String Reporting_Frequency__c;
    global Double of_Phases_In_Construction__c;
    global Double of_Phases_Active__c;
    global Double Pre_Sale_Percentage__c;
    global Double Total_Unit_Opportunity__c;
    global Double of_Units_Remaining__c;
    global Contact Contact_Agent__r;
    global Id Contact_Agent__c;
    global Boolean Pre_Approval_Completed__c;
    global String Partner_Real_Estate_Agency__c;
    global String Condo_Hub__c;
    global String Affiliated_or_Non_Affiliated__c;
    global String Actual_Go_Live_Year__c;
    global String Benefit_Type__c;
    global String Signing_AE__c;
    global Double Goal__c;
    global Double OPP_Business_Days_In_the_Current_Month__c;
    global Double Business_Days_Elapsed_This_Month__c;
    global Double Total_Business_Days_in_Current_Quarter__c;
    global Double Business_Days_Elapsed_in_Current_Quarter__c;
    global Decimal Team_Budget__c;
    global Double Business_Days_Elapsed_This_Year__c;
    global Double Business_Days_in_the_Current_Year__c;
    global Boolean Mailer__c;
    global String Flash_Sale__c;
    global Contact Third_Party_Primary_Contact__r;
    global Id Third_Party_Primary_Contact__c;
    global String Third_Party_Primary_Contact_Email__c;
    global List<AccountPartner> AccountPartners;
    global List<ActivityHistory> ActivityHistories;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<Broker_Import_File__c> Broker_Import_Files__r;
    global List<CollaborationGroupRecord> RecordAssociatedGroups;
    global List<CombinedAttachment> CombinedAttachments;
    global List<Contact> Contacts__r;
    global List<ContactRequest> ContactRequests;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<Contract> Partner_Agreements__r;
    global List<EmailMessage> Email_Messages__r;
    global List<EmailMessage> Emails;
    global List<Email_Tracking__c> Email_Tracking__r;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<Escalation__c> Escalations__r;
    global List<Event> Events;
    global List<EventRelation> EventRelations;
    global List<Fulfillment__c> Fulfillments__r;
    global List<InsurancePolicy> SourceOpportunity;
    global List<Loan_Mapping__c> Company_IDs__r;
    global List<Loan__c> Loans__r;
    global List<Loan__c_hd> Loans__r_hpr;
    global List<Loan__c_hd> Loans__r_hst;
    global List<LookedUpFromActivity> Activities__r;
    global List<Marketing_Event__c> Marketing_Events__r;
    global List<MktgBiz_Request__c> MktgBiz_Requests__r;
    global List<NetworkActivityAudit> ParentEntities;
    global List<Note> Notes;
    global List<NoteAndAttachment> NotesAndAttachments;
    global List<OpenActivity> OpenActivities;
    global List<Opportunity> Opportunity_Name__r;
    global List<OpportunityCompetitor> OpportunityCompetitors;
    global List<OpportunityContactRole> OpportunityContactRoles;
    global List<OpportunityFeed> Feeds;
    global List<OpportunityFieldHistory> Histories;
    global List<OpportunityHistory> OpportunityHistories;
    global List<OpportunityLineItem> OpportunityLineItems;
    global List<OpportunityPartner> OpportunityPartnersFrom;
    global List<OpportunityShare> Shares;
    global List<Opportunity_Competitor__c> Opportunity_Competitors__r;
    global List<Opportunity_Contact_Email__c> Opportunity_Contact_Emails__r;
    global List<Opportunity_Contact_Role__c> Opportunity_Contact_Roles__r;
    global List<Opportunity_Third_Party__c> Opportunity_Third_Parties__r;
    global List<Partner> Partners;
    global List<Partner_Import_Config__c> Partner_Import_Configs__r;
    global List<Partner_Import_File__c> Partner_Import_Files__r;
    global List<Partner_Name_Mapping__c> Partner_Name_Mappings__r;
    global List<ProcessInstance> ProcessInstances;
    global List<ProcessInstanceHistory> ProcessSteps;
    global List<RecordAction> RecordActions;
    global List<RecordActionHistory> RecordActionHistories;
    global List<Referral_Lead__c> Referral_Leads__r;
    global List<Referral_Lead__c> Referral_Leads_Third_Party__r;
    global List<Reporting_Requirements__c> Reporting_Requirements__r;
    global List<Review__c> Reviews__r;
    global List<SurveySubject> SurveySubjectEntities;
    global List<Task> Tasks;
    global List<TaskRelation> TaskRelations;
    global List<TopicAssignment> TopicAssignments;
    global List<AgentWork> WorkItem;
    global List<ContentVersion> FirstPublishLocation;
    global List<EventChangeEvent> What;
    global List<EventRelationChangeEvent> Relation;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<Lead> ConvertedOpportunity;
    global List<Loan__c_hd> Parent;
    global List<OpportunityContactRoleChangeEvent> Opportunity;
    global List<Opportunity__hd> Parent;
    global List<OutgoingEmail> RelatedTo;
    global List<PartnerNetworkRecordConnection> LocalRecord;
    global List<PartnerNetworkRecordConnection> ParentRecord;
    global List<PartnerNetworkRecordConnection> PartnerRecord;
    global List<PendingServiceRouting> WorkItem;
    global List<TaskChangeEvent> What;
    global List<TaskRelationChangeEvent> Relation;

    global Opportunity () 
    {
    }
}