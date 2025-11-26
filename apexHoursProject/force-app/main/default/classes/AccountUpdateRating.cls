public class AccountUpdateRating {
    

    

    /*public static boolean isCaseRecordCreated = false;
    public static boolean isCaseTeamCreated = false;
    public static boolean isSMcasePresent = false;
    public static boolean isEDIcasePresent = false;
    public static boolean isEdiPortalCasePresent = false;
    public static string isPDMS_LogicThroughCode = Label.PDMS_LogicThroughCode; // Variable to check whether Code Logic or Process Builder Logic should execute
    public static Map<id,Group> mapGroupNew = new Map<id,Group>([select Id, Name, DeveloperName, Type from Group where Type =: PDMS_Configuration.queType and (Name like 'PDMS%' OR DeveloperName='EDIC_Unassigned_Queue' OR DeveloperName='PDMS_Digital_Operations_Escalated')]);
    public static User loggedInUserInfo = PDMS_UTIL_ManualCaseCreation.getCurrentLoggedInUser();
    public static List<pdms_TAT_case__c> duplicateTAT =new List<pdms_TAT_case__c>();
    // CONSTANT FINAL VARIABLES DECLARATION FOR RECORD TYPES
    public static final string PDMS_PROVIDER_REQUEST_RECORDTYPE           = Schema.SObjectType.Case.getRecordTypeInfosByName().get(PDMS_Configuration.pdmsProviderRequestRecTypeLabel).getRecordTypeId();
    public static final string PDMS_INACTIVATE_PROVIDER_PARENT_RECORDTYPE = Schema.SObjectType.Case.getRecordTypeInfosByName().get(PDMS_Configuration.pdmsInactivateProviderParentRecTypeLabel).getRecordTypeId();
    public static final string PDMS_INACTIVATE_PROVIDER_CHILD_RECORDTYPE  = Schema.SObjectType.Case.getRecordTypeInfosByName().get(PDMS_Configuration.pdmsInactivateProviderChildRecTypeLabel).getRecordTypeId();
    public static final string PDMS_GENERAL_WORKFLOW_RECORDTYPE           = Schema.SObjectType.Case.getRecordTypeInfosByName().get(PDMS_Configuration.pdmsGeneralWorkflowRecTypeLabel).getRecordTypeId();
    public static final string PDMS_NETWORK_WORKFLOW_RECORDTYPE           = Schema.SObjectType.Case.getRecordTypeInfosByName().get(PDMS_Configuration.pdmsNetworkWorkflowRecTypeLabel).getRecordTypeId(); 
    //Added for Pronto Alert Rec Type to retain due date logic #1250538
    public static final string PDMS_PRONTO_ALERTS_RECORDTYPE           = Schema.SObjectType.Case.getRecordTypeInfosByName().get(PDMS_Configuration.pdmsProntoAlertsRecTypeLabel).getRecordTypeId(); 
    public static final string PRMS_SM_CASE_RECORD_TYPE           = Schema.SObjectType.Case.getRecordTypeInfosByName().get(PDMS_Configuration.pdmsSecureMsgRecTypeLabel).getRecordTypeId(); 
    public static final string PDMS_EDI_CASE_RECORD_TYPE           = Schema.SObjectType.Case.getRecordTypeInfosByName().get('PDMS EDI Intake Request').getRecordTypeId(); 
    public static final string PDMS_EDI_PORTAL_CASE_REC_TYPE           = Schema.SObjectType.Case.getRecordTypeInfosByName().get('PDMS EDI Portal Tool Transaction').getRecordTypeId(); 
    public static final string STR_ESTTIMEZONE                     = 'EST';  //PI9Story#1183276 - Added 3 Variables
    public static final string STR_DAY                     = 'E';
    public static final string STR_HH                     = 'HH';
    //1166294
    //Puru- Jaguar Medicaid Story #1770950 Start
    public static Map<Id,String>  mapSubTeam = new Map<Id,string>();
    public static Map<Id,String> mapQueueName = new Map<Id,String>();
    public static Map<Id,String> mapUserName = new Map<Id,String>();
    public static set<Id> lstGroupIds = new set<Id>();
    public static set <Id> lstUserIds = new set<Id>();
    public static List<Case> userInfoList = new List<Case>();
    public static List<User> userSubTeam = new List<User>();
    public static Map<id, User> userSubteamMap = new Map<id, User>();
    public static String subTeam = '';
    //Puru- Jaguar Medicaid Story #1770950 Start
    public static Boolean isFirstTime = true;
    public static Map<String, PDMS_TAT_Calculation__mdt> lowestTatMtdRecords = new Map<String, PDMS_TAT_Calculation__mdt>();//Story 1126634
    //#1374644 TAT Calculation fix from Account Screen
    public static List<PDMS_Provider_Change_Request__c> pcrGlobalList = new List<PDMS_Provider_Change_Request__c>();
    public static Map<id, PDMS_Provider_Change_Request__c> caseDetailPCRMap = new Map<id, PDMS_Provider_Change_Request__c>();
    public static List<caseTeamRole> listCaseTeamRole = [select id,Name,AccessLevel from caseTeamRole limit 1000]; // added by sohel for story# 1589591
    // added as part of 1638501
    public static List<PDMS_TAT_Case__c> caseTATRecordsList = new List<PDMS_TAT_Case__c>();
    public static Map<Id,PDMS_TAT_Case__c> caseTATRecordMap = new Map<Id,PDMS_TAT_Case__c>();
    //CPU issue Changes for 09/23 release start
    public static Map<Id, List<PDMS_TAT_Case__c>> caseTATRecordsMap = new Map<Id, List<PDMS_TAT_Case__c>>();
    public static List<Date> holidayDate=new List<Date>();
    public static integer int_Team_Elapsed_Business_Days;
    public static integer int_Owner_Elapsed_Business_Days;

    //Added by Munhoz, moved from trigger handler method
    public static String jsonOldMap=''; 
    public static String jsonNewMap = '';
    public static List<String> strRecTypes = new List<String>();
    
  //Trigger Methods
  //@author Rodolfo Munhoz  
    
    
    public static void BeforeInsert(List<SObject> newItems){
        system.debug('--Before*** --> Insert--> New Framework');
        strRecTypes.add(PDMS_Configuration.pdmsProviderRequestRecType);
        list<Case> lst = new list<Case>();
        system.debug('trigger.new '+trigger.new);
        system.debug('trigger.old '+trigger.old);
        //CPU issue Changes for 09/23 release start
        List<Holiday> listOfHolidays=PDMS_UTIL_CaseTriggerHandler.lstHoliday;
        for(Holiday hDay:listOfHolidays){
            holidayDate.add(hDay.ActivityDate);
        }
        lst = PDMS_UTIL_CaseTriggerHandler.checkRecordType(trigger.new, strRecTypes);   
            system.debug('GlobalisInsertInside ');
         PDMS_TRGH_CaseTriggerHelper.convertTransactionName(trigger.new);//Added by Tigers for Story 1857756    
       
        PDMS_TRGH_CaseTriggerHelper.enrichCaseRecordsDetails(trigger.new,mapGroupNew);
   
        if(isSMcasePresent)
            PDMS_TRGH_CaseTriggerHelper.sm_restrictNewCaseCreation(trigger.new);//Yesu
        system.debug('line 94 list size '+lst); 
        if(lst.size() < 1){
            return;
        }
        //Story #1176643
        PDMS_TRGH_CaseTriggerHelper.updateFLCases(trigger.new);
        PDMS_TRGH_CaseTriggerHelper.UpdateQueueRouteCode(trigger.new);   //Added for story#1043106
        PDMS_TRGH_CaseTriggerRoutingHelper.caseRoutingConfig(trigger.new) ;
        PDMS_TRGH_CaseTriggerTATHelper.evaluateTATValue();
        PDMS_TRGH_CaseTriggerTATHelper.handleTATRecord();           
    }

    public static void BeforeUpdate(Map<Id,SObject> mapOfNewItems,map<Id,SObject> mapOfOldItems){
        system.debug('--Before*** --> Update --> New Framework');
        strRecTypes.add(PDMS_Configuration.pdmsProviderRequestRecType);
        List<Case> lst = new list<Case>();
        system.debug('trigger.new '+trigger.new);
        system.debug('trigger.old '+trigger.old);
        //CPU issue Changes for 09/23 release start
        List<Holiday> listOfHolidays=PDMS_UTIL_CaseTriggerHandler.lstHoliday;
        for(Holiday hDay:listOfHolidays){
            holidayDate.add(hDay.ActivityDate);
        }

        lst = PDMS_UTIL_CaseTriggerHandler.checkRecordType(trigger.old, strRecTypes); 
        system.debug('GlobalisupdateInside ');
        PDMS_TRGH_CaseTriggerHelper.convertTransactionName(trigger.new);//Added by Jags for Story# 1932664
        if(isSMcasePresent){
            PDMS_TRGH_CaseTriggerHelper.sm_changeStatusOnAccept((Map<id,case>)Trigger.oldMap, trigger.new);
            PDMS_TRGH_CaseTriggerHelper.sm_caseEditRestriction((Map<id,case>)Trigger.oldMap, trigger.new);
        }
        if(isEDIcasePresent || isEdiPortalCasePresent){
            PDMS_TRGH_CaseTriggerHelper.sm_changeStatusOnAccept((Map<id,case>)Trigger.oldMap, trigger.new);
            PDMS_TRGH_CaseTriggerHelper.edi_caseEscalationRestriction((Map<id,case>)Trigger.oldMap, trigger.new);
        }

        system.debug('line 94 list size '+lst); 
        if(lst.size() < 1){
            return;
        }
        //Code Moved as part of the Medicaid Jaguar Changes
        //Puru- Jaguar Medicaid Story #1770950 Start
        for(Case c: (List<Case>)trigger.new) {
            Map<id,case> oldCaseMap = (Map<id,case>)Trigger.oldMap;
            Case oldCS = oldCaseMap.get(c.Id);
            if(String.valueof(c.OwnerId).startsWith('00G')){
                mapQueueName.put(c.Id,c.Owner.Name);
                lstGroupIds.add(c.OwnerId);
            }                
            else {
                lstUserIds.add(c.OwnerId);
                mapUserName.put(c.Id,c.Owner.Name);
                userInfoList.add(c);
            }
            if(String.valueof(oldCS.OwnerId).startsWith('00G')){
                lstGroupIds.add(oldCS.OwnerId);
            }
            else{
                lstUserIds.add(oldCS.OwnerId);
            }
        }
        lstUserIds.add(UserInfo.getUserId());
        List<User> userSubTeam = [SELECT Id, name,Sub_Team__c,Profile.Name,userrole.DeveloperName FROM User 
                                    WHERE Id IN :lstUserIds];
        system.debug('user Subteam::' +userSubTeam);
        userSubteamMap = new Map<id,User>(userSubTeam);
        //Puru- Jaguar Medicaid Story #1770950 End
        //Added by vijayakrishna.y DEngine Start
        boolean isDE = false;
        Case oldCase = (Case) trigger.old.get(0);
        Case newCase = (Case) trigger.new.get(0);
        if((newCase.n2de__Is_distributed__c && newCase.n2de__Last_distributed__c != oldCase.n2de__Last_distributed__c) || 
            (newCase.n2de__Is_reassigned__c == true && newCase.n2de__Last_reassigned__c != oldCase.n2de__Last_reassigned__c)){
                isDE = true;
            }
        system.debug(' Did DE update the Case : '+ isDE);
        //Added by vijayakrishna.y DEngine end
        //#1374644 TAT Calculation fix from Account Screen
        pcrGlobalList = [Select id, PDMS_Parent_Case__r.id, PDMS_Parent_Case__r.ParentId, PDMS_Parent_Case__r.Case_Record_Type__c, PDMS_Parent_Case__r.Status, PDMS_Parent_Case__r.OwnerId,PDMS_Parent_Case__r.POM_Ownership_Team__c, 
                            PDMS_Parent_Case__r.PDMS_Transaction_Type__c, PDMS_Parent_Case__r.CaseNumber, PDMS_Parent_Case__r.Account.Name, PDMS_List_of_PINs__c,
                            PDMS_Parent_Case__r.Owner.UserRoleId, PDMS_Parent_Case__r.Owner.userRole.DeveloperName,PDMS_Urgent__c,
                            PDMS_Is_Rework__c, PDMS_Number_of_PINs__c,PDMS_Number_of_PINs_Completed__c,
                            PDMS_Parent_Case__r.PDMS_Network_Owner__c, PDMS_Parent_Case__r.Owner.Username, // RTC story #1167883
                            PDMS_Parent_Case__r.PDMS_Transaction_Name__c, PDMS_Parent_Case__r.PDMS_Case_Owner_Role__c, PDMS_PDS_Status__c, //defect#1375998 - added PDMS_PDS_Status__c Jaguar/Prem
                            PDMS_PDIU_Status__c, PDMS_Network_Status__c, PDMS_Credentialing_Status__c, PDMS_Is_Network_User_Assigned__c,
                            PDMS_Submitted_Date__c, PDMS_Is_PDS_User_Assigned__c,PDMS_Parent_Case__r.PDMS_Transaction_Type_Detail__c, PDMS_PDS_Start__c,PDMS_PDS_End__c, //#1364282 //Added PDS start date for RTC story #1310895 by Prakash/Jaguar
                            PDMS_Touch_Count_PDS__c,PDMS_Touch_Count_Network__c,PDMS_Touch_Count_PDIU__c,PDMS_Touch_Count_COE__c,PDMS_Touch_Count_Credentialing__c,
                            PDMS_Medicare_Touch_Count__c,ERA_EFT_Touch_Count__c,PDMS_Medicare_Start__c, PDMS_Other_Status__c, PDMS_Touch_Count_Other__c,//RTC Story 1242786 Added TouchPoint Fields
                            PDMS_Parent_Case__r.subject,PDMS_Parent_Case__r.CreatedBy.Name,PDMS_Future_Date__c,PDMS_Parent_Case__r.Owner_Name__c,PDMS_Parent_Case__r.PDMS_Provider_Change_Request__c,PDMS_Is_Case_Status_Complete__c, // #1484007 column added  // Added for 1484522   
                            PDMS_Parent_Case__r.External_ID__c, PDMS_Parent_Case__r.PDMS_Change_Type__c, PDMS_Parent_Case__r.PDMS_Owner_Aetna_ID__c,
                            PDMS_PDS_Status_Reason__c, PDMS_Other_Status_Reason__c,PDMS_Network_Start__c,PDMS_Network_End__c
                            from PDMS_Provider_Change_Request__c
                            where PDMS_Parent_Case__r.id in : trigger.newMap.keySet()];
        
        // added as part of 1638501                 
        caseTATRecordsList = [SELECT Id,Case_Owner__c,PDMS_Case_Number_Lk__c, PDMS_Team__c,
                                PDMS_Sub_Team__c,PDMS_Item_Start_Time__c,PDMS_Item_End_Time__c, 
                                PDMS_Nbr_Elasped_Days_Duration__c,Team_Elapsed_Business_Days__c,PDMS_Business_Days_Int__c,
                                PDMS_Calender_Days_Int__c,PDMS_Case_Transaction_Type__c,PDMS_Case_Status__c,PDMS_Touch_Count__c ,
                                isTATCloned__c
                                FROM PDMS_TAT_Case__c 
                                WHERE PDMS_Case_Number_Lk__c in : trigger.old 
                                ORDER BY PDMS_Item_Start_Time__c  DESC];
        system.debug('caseTATRecordsList*****'+caseTATRecordsList);
        for(PDMS_TAT_Case__c tatCaseRecord : caseTATRecordsList){
            
            if(tatCaseRecord.PDMS_Touch_Count__c!=0 && tatCaseRecord.PDMS_Item_End_Time__c!=null){
                // added the fix for 1638501 to support bulk processing
                if(!caseTATRecordMap.containsKey(tatCaseRecord.PDMS_Case_Number_Lk__c)){
                    caseTATRecordMap.put(tatCaseRecord.PDMS_Case_Number_Lk__c , tatCaseRecord);
                }
            }
            //CPU issue Changes for 09/23 release start
            if(caseTATRecordsMap.containsKey(tatCaseRecord.PDMS_Case_Number_Lk__c)){
                // Appends the current tatCaseRecord to existing PDMS_TAT_Case__c list
                caseTATRecordsMap.get(tatCaseRecord.PDMS_Case_Number_Lk__c).add(tatCaseRecord);
            }    
            else {
                // Creates the first PDMS_TAT_Case__c List for a Case ID
                caseTATRecordsMap.put(tatCaseRecord.PDMS_Case_Number_Lk__c , New List<PDMS_TAT_Case__c> {tatCaseRecord});
            } 
            //CPU issue Changes for 09/23 release end
            
        }
        
        //Added below changes for defect # 1563690-Start
        List<Case> STSSCaseList = new List<Case>();
        for(Case csRec : (List<Case>) Trigger.New){
            //if(csRec.Status!=PDMS_Configuration.statusSubmitToSrcSys && !(System.Label.PDMS_BYPass_STSS ).containsIgnoreCase(csRec.PDMS_Transaction_Name__c)){
            //Fix added by vijayakrishna.y for test class issue in devmnr5 05/04/21
            if(String.isNotBlank(csRec.Status) && String.isNotBlank(csRec.PDMS_Transaction_Name__c) && csRec.Status!=PDMS_Configuration.statusSubmitToSrcSys && !(System.Label.PDMS_BYPass_STSS ).containsIgnoreCase(csRec.PDMS_Transaction_Name__c)){
                STSSCaseList.add(csRec);
            }
        }
        //Added below changes for defect # 1563690-End
        for(PDMS_Provider_Change_Request__c objPCR : pcrGlobalList){
            caseDetailPCRMap.put(objPCR.PDMS_Parent_Case__c, objPCR);
        }
        //1628222
        if (!isDE) {
            for(Case n : (List<Case>) trigger.new){
                Map<id,case> oldCaseMap = (Map<id,case>)Trigger.oldMap;
                Case o = oldCaseMap.get(n.Id);
                if(n.PDMS_Transaction_Type_Detail__c != o.PDMS_Transaction_Type_Detail__c){
                    PDMS_TRGH_CaseTriggerHelper.roleTTDValidation(n);  
                }
                //Jaguar Story #1768305 and 1772234
                Case oldCaseRec = oldCaseMap.get(n.Id);
                
               
                
                system.debug('CaseNewValue=='+n.OwnerId+'CaseOldValue=='+oldCaseRec.OwnerId); 
                system.debug('By_Pass_Validation__c=='+n.By_Pass_Validation__c+'By_Pass_Validation__c=='+oldCaseRec.By_Pass_Validation__c); 
                system.debug('Name=='+UserInfo.getName());
                //Invoke the status change in progress on click of Accept button - 
                if (oldCaseRec.Project__c == n.Project__c && n.PDMS_Transaction_Name__c != PDMS_Configuration.ERAEFT && UserInfo.getName() != 'Automated Process'){
                    if (!(n.By_Pass_Validation__c == 'RouteToTeamMember' || (n.By_Pass_Validation__c == 'Reset' && oldCaseRec.By_Pass_Validation__c == 'RouteToTeamMember'))){
                        //if (n.By_Pass_Validation__c != 'RouteToTeamMember' && oldCaseRec.By_Pass_Validation__c == 'Reset'){
                        // Jaguar Story #1772234
                        List<String> errorMsgs = System.Label.PDMS_Case_AcceptorChangeOwner_Restrict.split('#');
                        Boolean restrictCaseOwnerChange = PDMS_UTIL_CaseTriggerHandler.changeOwnerRestrictionOnCase(n,oldCaseRec,userSubteamMap,mapGroupNew);
                        if(restrictCaseOwnerChange == true){
                            n.addError(errorMsgs[0]);
                        }
                        //Jaguar Story #1768305 
                        if (restrictCaseOwnerChange == false){
                            Boolean restrictCaseEdit = PDMS_UTIL_CaseTriggerHandler.editRestrictionOnCase(oldCaseRec,userSubteamMap,mapGroupNew);
                            if(restrictCaseEdit == true){
                                n.addError(errorMsgs[1]);
                            }
                        }
                    } 
                }
                //Stat: Defect #2071063 
                if(n.By_Pass_Validation__c == PDMS_Configuration.routeToMember)
                {
                    if (oldCaseRec.By_Pass_Validation__c == 'Reset'){
                        n.By_Pass_Validation__c = 'Reset Again';
                    }
                    else {
                        n.By_Pass_Validation__c = 'Reset';    
                    }
                }
                //End: Defect #2071063
            }
        }
        // Story #1028968
        // - It moved to under PDMS_TRGH_CaseTriggerTATHelper.evaluateTATValue() Jaguar/Dharma
        //PDMS_TRGH_CaseTriggerHandler.calculateTATBasedOnCaseTeam((Map<id,case>)trigger.newMap,(Map<id,case>)trigger.Oldmap);
        PDMS_TRGH_CaseTriggerHelper.updateCaseOwnership((Map<id,case>)trigger.newMap,(Map<id,case>)trigger.Oldmap); // Added for Story 904939 //added by sohel for story# 1589591
        //call updateCaseTeam method 
        // if(trigger.newMap.size()<2){
        //Story #1176643
        //UpdateChildCaseOwner(trigger.new); //Moved the logice to Batch Class-Phoenix
        //Added by vijayakrishna.y DEngine Start
        if(!isDE){
            PDMS_TRGH_CaseTriggerHelper.updateFLCases(trigger.new);
        }
        //Added by vijayakrishna.y DEngine End
        PDMS_TRGH_CaseTriggerHelper.updateCaseTeam((Map<id,case>)trigger.newMap,(Map<id,case>)trigger.Oldmap);  
        PDMS_TRGH_CaseTriggerHelper.assignCaseValue((Map<id,case>)trigger.newMap,(Map<id,case>)trigger.Oldmap); // Added for Story 904939, 946146
        
 
        PDMS_TRGH_CaseTriggerHelper.updateCaseRecords((Map<id,case>)trigger.newMap,(Map<id,case>)trigger.Oldmap,mapGroupNew); 
   
       
        if(!STSSCaseList.isEmpty() && !isDE){
            PDMS_TRGH_CaseTriggerHelper.UpdateQueueRouteCode(STSSCaseList);
            PDMS_TRGH_CaseTriggerRoutingHelper.caseRoutingConfig(STSSCaseList);
        }

        
        //Added by vijayakrishna.y DEngine End
        PDMS_TRGH_CaseTriggerTATHelper.evaluateTATValue();
        PDMS_TRGH_CaseTriggerTATHelper.handleTATRecord();

        //Added by Munhoz to handle update of reopened SM cases

        List<Case> caseNewValues = mapOfNewItems.values();
        for(Case caseNew:caseNewValues){
                Case caseOld = (Case)mapOfOldItems.get(caseNew.id);
                //rule criteria
                if(caseOld.status=='Closed' && caseNew.status=='Open'){
                    caseNew.Date_Time_Reopened__c=DateTime.now();
                    caseNew.ReopenedBy__c=UserInfo.getFirstName()+' '+UserInfo.getLastName();
                }
        }
    }

    public static void BeforeDelete(map<Id,SObject> mapOfOldItems){
    }

    public static void AfterInsert(Map<Id,SObject> mapOfNewItems){
        system.debug('--After *** --> Insert--> New Framework');
        strRecTypes.add(PDMS_Configuration.pdmsProviderRequestRecType);
        list<Case> lst = new list<Case>();
        system.debug('trigger.new '+trigger.new);
        system.debug('trigger.old '+trigger.old);
        //CPU issue Changes for 09/23 release start
        List<Holiday> listOfHolidays=PDMS_UTIL_CaseTriggerHandler.lstHoliday;
        for(Holiday hDay:listOfHolidays){
            holidayDate.add(hDay.ActivityDate);
        }

        lst = PDMS_UTIL_CaseTriggerHandler.checkRecordType(trigger.new, strRecTypes);   
        system.debug('GlobalisInsertInside ');
        system.debug('line 94 list size '+lst); 
        if(lst.size() < 1){
            return;
        }
        PDMS_TRGH_CaseTriggerTATHelper.evaluateTATValue();
        PDMS_TRGH_CaseTriggerTATHelper.handleTATRecord();
    }
    public void AfterUpdate(Map<Id,SObject> mapOfNewItems,map<Id,SObject> mapOfOldItems){
        system.debug('--After*** --> Update--> New Framework');
        strRecTypes.add(PDMS_Configuration.pdmsProviderRequestRecType);
        list<Case> lst = new list<Case>();
        system.debug('trigger.new '+trigger.new);
        system.debug('trigger.old '+trigger.old);
        //CPU issue Changes for 09/23 release start
        List<Holiday> listOfHolidays=PDMS_UTIL_CaseTriggerHandler.lstHoliday;
        for(Holiday hDay:listOfHolidays){
            holidayDate.add(hDay.ActivityDate);
        }

        lst = PDMS_UTIL_CaseTriggerHandler.checkRecordType(trigger.old, strRecTypes); 
        system.debug('GlobalisupdateInside ');

        system.debug('line 94 list size '+lst); 
        if(lst.size() < 1){
            return;
        }

        //Code Moved as part of the Medicaid Jaguar Changes
        //Puru- Jaguar Medicaid Story #1770950 Start
        for(Case c: (List<Case>)trigger.new) {
            Map<id,case> oldCaseMap = (Map<id,case>)Trigger.oldMap;
            Case oldCS = oldCaseMap.get(c.Id);
            if(String.valueof(c.OwnerId).startsWith('00G')){
                mapQueueName.put(c.Id,c.Owner.Name);
                lstGroupIds.add(c.OwnerId);
            }                
            else {
                lstUserIds.add(c.OwnerId);
                mapUserName.put(c.Id,c.Owner.Name);
                userInfoList.add(c);
            }
            if(String.valueof(oldCS.OwnerId).startsWith('00G')){
                lstGroupIds.add(oldCS.OwnerId);
            }
            else{
                lstUserIds.add(oldCS.OwnerId);
            }
        }
        lstUserIds.add(UserInfo.getUserId());
        List<User> userSubTeam = [SELECT Id, name,Sub_Team__c,Profile.Name,userrole.DeveloperName FROM User 
                                    WHERE Id IN :lstUserIds];
        system.debug('user Subteam::' +userSubTeam);
        userSubteamMap = new Map<id,User>(userSubTeam);
        //Puru- Jaguar Medicaid Story #1770950 End
        //Added by vijayakrishna.y DEngine Start
        boolean isDE = false;
        Case oldCase = (Case) trigger.old.get(0);
        Case newCase = (Case) trigger.new.get(0);
        if((newCase.n2de__Is_distributed__c && newCase.n2de__Last_distributed__c != oldCase.n2de__Last_distributed__c) || 
            (newCase.n2de__Is_reassigned__c == true && newCase.n2de__Last_reassigned__c != oldCase.n2de__Last_reassigned__c)){
                isDE = true;
            }
        system.debug(' Did DE update the Case : '+ isDE);
        //Added by vijayakrishna.y DEngine end
        //#1374644 TAT Calculation fix from Account Screen
        pcrGlobalList = [Select id, PDMS_Parent_Case__r.id, PDMS_Parent_Case__r.ParentId, PDMS_Parent_Case__r.Case_Record_Type__c, PDMS_Parent_Case__r.Status, PDMS_Parent_Case__r.OwnerId,PDMS_Parent_Case__r.POM_Ownership_Team__c, 
                            PDMS_Parent_Case__r.PDMS_Transaction_Type__c, PDMS_Parent_Case__r.CaseNumber, PDMS_Parent_Case__r.Account.Name, PDMS_List_of_PINs__c,
                            PDMS_Parent_Case__r.Owner.UserRoleId, PDMS_Parent_Case__r.Owner.userRole.DeveloperName,PDMS_Urgent__c,
                            PDMS_Is_Rework__c, PDMS_Number_of_PINs__c,PDMS_Number_of_PINs_Completed__c, 
                            PDMS_Parent_Case__r.PDMS_Network_Owner__c, PDMS_Parent_Case__r.Owner.Username, // RTC story #1167883
                            PDMS_Parent_Case__r.PDMS_Transaction_Name__c, PDMS_Parent_Case__r.PDMS_Case_Owner_Role__c, PDMS_PDS_Status__c, //defect#1375998 - added PDMS_PDS_Status__c Jaguar/Prem
                            PDMS_PDIU_Status__c, PDMS_Network_Status__c, PDMS_Credentialing_Status__c, PDMS_Is_Network_User_Assigned__c,
                            PDMS_Submitted_Date__c, PDMS_Is_PDS_User_Assigned__c,PDMS_Parent_Case__r.PDMS_Transaction_Type_Detail__c, PDMS_PDS_Start__c,PDMS_PDS_End__c, //#1364282 //Added PDS start date for RTC story #1310895 by Prakash/Jaguar
                            PDMS_Touch_Count_PDS__c,PDMS_Touch_Count_Network__c,PDMS_Touch_Count_PDIU__c,PDMS_Touch_Count_COE__c,PDMS_Touch_Count_Credentialing__c,
                            PDMS_Medicare_Touch_Count__c,ERA_EFT_Touch_Count__c,PDMS_Medicare_Start__c, PDMS_Other_Status__c, PDMS_Touch_Count_Other__c,//RTC Story 1242786 Added TouchPoint Fields
                            PDMS_Parent_Case__r.subject,PDMS_Parent_Case__r.CreatedBy.Name,PDMS_Future_Date__c,PDMS_Parent_Case__r.Owner_Name__c,PDMS_Parent_Case__r.PDMS_Provider_Change_Request__c,PDMS_Is_Case_Status_Complete__c, // #1484007 column added  // Added for 1484522   
                            PDMS_Parent_Case__r.External_ID__c, PDMS_Parent_Case__r.PDMS_Change_Type__c, PDMS_Parent_Case__r.PDMS_Owner_Aetna_ID__c,
                            PDMS_PDS_Status_Reason__c, PDMS_Other_Status_Reason__c,PDMS_Network_Start__c,PDMS_Network_End__c
                            from PDMS_Provider_Change_Request__c
                            where PDMS_Parent_Case__r.id in : trigger.newMap.keySet()];
        
        // added as part of 1638501                 
        caseTATRecordsList = [SELECT Id,Case_Owner__c,PDMS_Case_Number_Lk__c, PDMS_Team__c,
                                PDMS_Sub_Team__c,PDMS_Item_Start_Time__c,PDMS_Item_End_Time__c, 
                                PDMS_Nbr_Elasped_Days_Duration__c,Team_Elapsed_Business_Days__c,PDMS_Business_Days_Int__c,
                                PDMS_Calender_Days_Int__c,PDMS_Case_Transaction_Type__c,PDMS_Case_Status__c,PDMS_Touch_Count__c ,
                                isTATCloned__c
                                FROM PDMS_TAT_Case__c 
                                WHERE PDMS_Case_Number_Lk__c in : trigger.old 
                                ORDER BY PDMS_Item_Start_Time__c  DESC];
        system.debug('caseTATRecordsList*****'+caseTATRecordsList);
        for(PDMS_TAT_Case__c tatCaseRecord : caseTATRecordsList){
            
            if(tatCaseRecord.PDMS_Touch_Count__c!=0 && tatCaseRecord.PDMS_Item_End_Time__c!=null){
                // added the fix for 1638501 to support bulk processing
                if(!caseTATRecordMap.containsKey(tatCaseRecord.PDMS_Case_Number_Lk__c)){
                    caseTATRecordMap.put(tatCaseRecord.PDMS_Case_Number_Lk__c , tatCaseRecord);
                }
            }
            //CPU issue Changes for 09/23 release start
            if(caseTATRecordsMap.containsKey(tatCaseRecord.PDMS_Case_Number_Lk__c)){
                // Appends the current tatCaseRecord to existing PDMS_TAT_Case__c list
                caseTATRecordsMap.get(tatCaseRecord.PDMS_Case_Number_Lk__c).add(tatCaseRecord);
            }    
            else {
                // Creates the first PDMS_TAT_Case__c List for a Case ID
                caseTATRecordsMap.put(tatCaseRecord.PDMS_Case_Number_Lk__c , New List<PDMS_TAT_Case__c> {tatCaseRecord});
            } 
            //CPU issue Changes for 09/23 release end
            
        }
        
        //Added below changes for defect # 1563690-Start
        List<Case> STSSCaseList = new List<Case>();
        for(Case csRec : (List<Case>) Trigger.New){
            //if(csRec.Status!=PDMS_Configuration.statusSubmitToSrcSys && !(System.Label.PDMS_BYPass_STSS ).containsIgnoreCase(csRec.PDMS_Transaction_Name__c)){
            //Fix added by vijayakrishna.y for test class issue in devmnr5 05/04/21
            if(String.isNotBlank(csRec.Status) && String.isNotBlank(csRec.PDMS_Transaction_Name__c) && csRec.Status!=PDMS_Configuration.statusSubmitToSrcSys && !(System.Label.PDMS_BYPass_STSS ).containsIgnoreCase(csRec.PDMS_Transaction_Name__c)){
                STSSCaseList.add(csRec);
            }
        }
        //Added below changes for defect # 1563690-End
        for(PDMS_Provider_Change_Request__c objPCR : pcrGlobalList){
            caseDetailPCRMap.put(objPCR.PDMS_Parent_Case__c, objPCR);
        }
        //call updateRelatedMessagesToOld method
        // if(trigger.newMap.size()<2){
        PDMS_TRGH_CaseRelatedRecUpdateHelper.updateRelatedMessagesToOld((Map<id,case>)trigger.newmap,(Map<id,case>)trigger.Oldmap);
        //PDMS_UTIL_CaseTriggerHandler.updateGlobalParentCaseStatus(trigger.new);//Added for #1288562
        //if(trigger.isUpdate){ -- already check is there - //commenting for defect 1287504 
        //PDMS_TRGH_CaseTriggerHandler.updateCaseOwnership((Map<id,case>)trigger.newMap,(Map<id,case>)trigger.Oldmap); // Added for Story 904939 // commented by sohel for story# 1589591 
        PDMS_TRGH_CaseRelatedRecUpdateHelper.updateAccountDetails((Map<id,case>)trigger.newmap,(Map<id,case>)trigger.Oldmap); // Added for Story 872994
        PDMS_TRGH_CaseTriggerHelper.createMembermovesTask((Map<id,case>)trigger.newmap,(Map<id,case>)trigger.Oldmap); // Added for Story 904939
        //PDMS_TRGH_CaseTriggerHandler.updateRelatedPCRRecords((Map<id,case>)trigger.newmap,(Map<id,case>)trigger.Oldmap); // // Added for Story 946146
        PDMS_TRGH_CaseRelatedRecUpdateHelper.updateRelatedPCRRecords((Map<id,case>)trigger.newmap,(Map<id,case>)trigger.Oldmap); // // Added for Story 946146
        //added for story#1016914
        PDMS_TRGH_CaseTriggerHelper.notifyPPOEOnWorkItemCompletion((Map<id,case>)trigger.newMap,(Map<id,case>)trigger.oldMap);
        //Added if condition for defect # 1563690
        if(!STSSCaseList.isEmpty()){
            PDMS_TRGH_CaseTriggerHelper.taskClosure(STSSCaseList);
        }     
        
        //Added by Team saturn
        Id recordTypeId = Schema.SObjectType.Case.getRecordTypeInfosByName().get('PDMS General Workflow').getRecordTypeId();
        Map<String, PDMS_Provider_Change_Request__c> PCRRecordsList=new Map<String, PDMS_Provider_Change_Request__c>();                
        Set<Id> obrIds = new Set<Id>();
        Set<Id> newCaseClosedList = new Set<Id>();
        for (Case checkItem : (List<Case>) trigger.new) { 
            Case oldMethodCase=(Case)trigger.oldMap.get(checkItem.Id);                                        
            if (String.isNotBlank(checkItem.PDMS_Provider_Onboarding_Request__c) && checkItem.RecordTypeId== recordTypeId && checkItem.PDMS_Source_System__c == 'EPDB' && 
                checkItem.PDMS_Transaction_Type_Detail__c=='POC Onboarding' && checkItem.Status!=oldMethodCase.Status && (checkItem.Status=='PDMS Complete' || checkItem.Status=='No Action Required')) {
                    PCRRecordsList.put(checkItem.Id, caseDetailPCRMap.get(checkItem.Id));
                }
            
            if ((checkItem.Origin == 'POC' && checkItem.PDMS_Transaction_Type_Detail__c =='POC Onboarding') && (checkItem.Status == 'PDMS Complete' || checkItem.Status == 'No Action Required')
                && (checkItem.PDMS_Source_System__c == 'EPDB' || checkItem.PDMS_Source_System__c == 'CPD' || checkItem.PDMS_Source_System__c == 'EPDB AND CPD')) {
                    obrIds.add(checkItem.PDMS_Provider_Onboarding_Request__c);
                    newCaseClosedList.add(checkItem.Id);
                }
        }
        
        if (!PCRRecordsList.isEmpty()) {
            PDMS_TRGH_CaseRelatedRecUpdateHelper.listofPinUpdate(System.JSON.serialize(PCRRecordsList));
        }
        
        if (!obrIds.isEmpty() && !newCaseClosedList.isEmpty()) {
            PDMS_TRGH_CaseRelatedRecUpdateHelper.updatePocOnboardingStatus(System.JSON.serialize(obrIds), System.JSON.serialize(newCaseClosedList));
        }
        //team saturn end
        
        PDMS_Util.updateGlobalParentCaseStatus(trigger.new);//works only for Add affiliation child trnx //phnx 1573525
        PDMS_TRGH_CaseRelatedRecUpdateHelper.updateRelatedPCRAttributeStatus((Map<id,case>)trigger.newmap,(Map<id,case>)trigger.Oldmap);//#1771105 PI16 sprint 1 Works only for child trnx term affiliation
        //PDMS_TRGH_CaseRelatedRecUpdateHelper.updatePocOnboardingStatus(System.JSON.serialize((Map<id,case>)trigger.newmap));

        PDMS_TRGH_CaseTriggerTATHelper.evaluateTATValue();
        PDMS_TRGH_CaseTriggerTATHelper.handleTATRecord();

        PDMS_TRGH_DMPublishEventHandler.pdmsEventPublish((Map<id,case>)trigger.newmap,(Map<id,case>)trigger.Oldmap);
    }
    public static void AfterDelete(map<Id,SObject> mapOfOldItems){
    }
    public static void AfterUndelete(map<Id,SObject> mapOfOldItems){
    }
    */


}