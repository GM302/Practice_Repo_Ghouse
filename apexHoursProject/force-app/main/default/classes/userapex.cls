public with sharing class userapex {

    @AuraEnabled(cacheable=true)

    public static list<user> getUserIn(){

        list<user> u = [SELECT Id, FirstName, Email, IsActive, Alias, ProfileId FROM User where name = 'Ghouse'];
        return u;
    }
  
  
}