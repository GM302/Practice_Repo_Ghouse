@isTest
private class CreateOppTest {
    
   @isTest
    public static void CreateOppMethod(){
        
        Account acc = new Account(Name = 'TestAccount', Industry ='Agriculture');
        
       // Test.StartTest();
        insert acc;
       // Test.StopTest();
        
        
        List<opportunity> oppList = [select account.name,id,name,stagename,amount from opportunity where accountid =: acc.Id];
        system.assertEquals(0,oppList.size(), 'only 1 opp created');
    }

}