@isTest
private class UserTriggerHandlerTest {
   
    
    
    @isTest
    static void userGropMethod(){
        
        Profile profileId = [SELECT Id FROM Profile WHERE Name = 'System Administrator' LIMIT 1];
        List<user> usss = new List<user>();
        for(integer i=0;i<100;i++){
            User usr = new User(LastName = 'Bhardwaj'+i,
                            FirstName='Pranav',
                            Alias = 'pbhar',
                            Email = 'Pranav.Bhardwaj@asdf.com',
                            Username = 'Pranav.Bhardwaj@asdf.com',
                            ProfileId = profileId.id,
                            TimeZoneSidKey = 'GMT',
                            LanguageLocaleKey = 'en_US',
                            EmailEncodingKey = 'UTF-8',
                            LocaleSidKey = 'en_US'
                           );
             usss.add(usr);
            
        } 
        insert usss;
        
        
        
        
        List<user> us = [select id from user];
        UserTriggerHandler.addAdminToPublicGroup(us);
    }
    
    
    
}