public with sharing class UserCls {

    @AuraEnabled(cacheable=true)
    public static List<user> getUserDeatils(){
       
            List<user> userData = [SELECT profile.name,FirstName, Id, IsActive, Alias From user where FirstName = 'Ghouse'];


            return userData;
            
         
    }
   
}