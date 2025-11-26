@isTest
public class UpdateMailingcityOnAllconsTest {
    
    @isTest
    static void billingMethod(){
        
        Account acc = new Account(Name = 'TestAccount' , Billingcity='BPL');
        
        Test.startTest();
          insert acc;
        Test.StopTest();
        
        Account ac = [select Id,Name,Billingcity from Account where id  =:acc.Id];
        
        ac.BillingCity='LPP';
        
        UPDATE ac;
        
        system.assertequals('LPP', ac.BillingCity);
        
        
        
    }
    
    

}