// This file is generated as an Apex representation of the
//     corresponding sObject and its fields.
// This read-only file is used by the Apex Language Server to
//     provide code smartness, and is deleted each time you
//     refresh your sObject definitions.
// To edit your sObjects and their fields, edit the corresponding
//     .object-meta.xml and .field-meta.xml files.

global class Task {
    global Id Id;
    global RecordType RecordType;
    global Id RecordTypeId;
    global SObject Who;
    global Id WhoId;
    global SObject What;
    global Id WhatId;
    global Integer WhoCount;
    global Integer WhatCount;
    global String Subject;
    global Date ActivityDate;
    global String Status;
    global String Priority;
    global Boolean IsHighPriority;
    global User Owner;
    global Id OwnerId;
    global String Description;
    global String Type;
    global Boolean IsDeleted;
    global Account Account;
    global Id AccountId;
    global Boolean IsClosed;
    global Datetime CreatedDate;
    global User CreatedBy;
    global Id CreatedById;
    global Datetime LastModifiedDate;
    global User LastModifiedBy;
    global Id LastModifiedById;
    global Datetime SystemModstamp;
    global Boolean IsArchived;
    global Integer CallDurationInSeconds;
    global String CallType;
    global String CallDisposition;
    global String CallObject;
    global Datetime ReminderDateTime;
    global Boolean IsReminderSet;
    global PartnerNetworkConnection ConnectionReceived;
    global Id ConnectionReceivedId;
    global PartnerNetworkConnection ConnectionSent;
    global Id ConnectionSentId;
    global Task RecurrenceActivity;
    global Id RecurrenceActivityId;
    global Boolean IsRecurrence;
    global Date RecurrenceStartDateOnly;
    global Date RecurrenceEndDateOnly;
    global String RecurrenceTimeZoneSidKey;
    global String RecurrenceType;
    global Integer RecurrenceInterval;
    global Integer RecurrenceDayOfWeekMask;
    global Integer RecurrenceDayOfMonth;
    global String RecurrenceInstance;
    global String RecurrenceMonthOfYear;
    global String RecurrenceRegeneratedType;
    global String TaskSubtype;
    global Datetime CompletedDateTime;
    global String Activity_Type__c;
    global String Template_Name__c;
    global Boolean Enable_Tracking__c;
    global String CTI_Id__c;
    global Datetime Call_End_Time__c;
    global Datetime Call_Start_Time__c;
    global Double Number_of_Opens_External__c;
    global Boolean Email_Opened_External__c;
    global Email_Tracking__c Email_Tracking__r;
    global Id Email_Tracking__c;
    global String Activity_Time__c;
    global String Call_Direction__c;
    global String Call_Disposition__c;
    global Campaign Campaign__r;
    global Id Campaign__c;
    global Boolean Email_Opened__c;
    global Datetime First_Open_Date_Time__c;
    global Date Completed_Date__c;
    global Boolean Is_Mass_Email__c;
    global Datetime Last_Open_Date_Time__c;
    global String Location__c;
    global Double Number_of_Opens__c;
    global Boolean Pitch_Opened__c;
    global Boolean My_Activity__c;
    global Datetime LID__Date_Sent__c;
    global String Disposition__c;
    global String LID__URL__c;
    global String Importance__c;
    global Opportunity Opportunity__r;
    global Id Opportunity__c;
    global Boolean Scheduled_with_Client_Prospect__c;
    global String Broker_Service_Appointment_Type__c;
    global List<AttachedContentDocument> AttachedContentDocuments;
    global List<AttachedContentNote> AttachedContentNotes;
    global List<Attachment> Attachments;
    global List<CombinedAttachment> CombinedAttachments;
    global List<ContentDocumentLink> ContentDocumentLinks;
    global List<EntitySubscription> FeedSubscriptionsForEntity;
    global List<NetworkActivityAudit> ParentEntities;
    global List<NetworkUserHistoryRecent> NetworkUserHistoryRecentToRecord;
    global List<SurveySubject> SurveySubjectEntities;
    global List<Task> RecurringTasks;
    global List<TaskFeed> Feeds;
    global List<TaskRelation> TaskRelations;
    global List<TaskWhoRelation> TaskWhoRelations;
    global List<TopicAssignment> TopicAssignments;
    global List<ContentVersion> FirstPublishLocation;
    global List<EmailMessage> Activity;
    global List<EmailStatus> Task;
    global List<FeedComment> Parent;
    global List<FlowRecordRelation> RelatedRecord;
    global List<PartnerNetworkRecordConnection> LocalRecord;
    global List<PartnerNetworkRecordConnection> ParentRecord;
    global List<PartnerNetworkRecordConnection> PartnerRecord;
    global List<TaskChangeEvent> RecurrenceActivity;
    global List<TaskRecurrenceException> RecurrenceTask;
    global List<TaskRecurrenceException> Task;

    global Task () 
    {
    }
}