public with sharing class AccountsDeails {

    @AuraEnabled(cacheable=true)

    public static user getUserInfo(){

        user u = [SELECT Id, Name, Email, IsActive, Alias, ProfileId FROM User where name = 'Ghouse Mohiddin'];
        return u;
    }
  
  
}