@isTest
private class AccountToContactTest {
    
   
        
        @testSetup
    static void myMethod(){
        
        
        profile p = [select id,name from profile where name = 'standard user' ];
        
         User standardUser = new User(Alias = 'standt', Email='standarduser@testclasses.com', 
            EmailEncodingKey='UTF-8', LastName='TestUser', LanguageLocaleKey='en_US', 
            LocaleSidKey='en_US', ProfileId = p.Id, 
            TimeZoneSidKey='America/Los_Angeles', UserName='standarduser@testclasses.com');
        
        system.runas(standardUser){
            Account a = new account();
            a.name = 'yaho';
            insert a;
            
            contact con = new contact();
            con.lastname ='gga';
            con.AccountId=a.id;
            insert con;
        }
        
        
        
    }

        
        
    
        
}