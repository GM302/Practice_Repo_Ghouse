@isTest
private class MixedDMLTestClassDemo {
    
    static testMethod void mixedDMLExample() {  
        User u;
        
        Account a = new Account(Name='ApexHours');
        insert a;
        
        User thisUser = [SELECT Id FROM User WHERE Id = :UserInfo.getUserId()];

        System.runAs (thisUser) {
            Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];
            UserRole r = [SELECT Id FROM UserRole WHERE Name='CEO'];
           
            User usr = new User(alias = 'apes', email='apex@apexho.com', 
               emailencodingkey='UTF-8', lastname='Hours', 
               languagelocalekey='en_US', 
               localesidkey='en_US', profileid = p.Id, userroleid = r.Id,
               timezonesidkey='America/Los_Angeles', 
               username='apexhours@apexho.com');
            insert usr;
        }
        
    }
}