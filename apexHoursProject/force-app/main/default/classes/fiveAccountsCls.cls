public with sharing class fiveAccountsCls {

@AuraEnabled(cacheable=true)
public static List<Account> getAccountsList(){
    try {

        List<Account> accList = [select id,name,phone,industry,fax from Account where phone !=null and industry !=null and fax !=null limit 5];
        return accList;
        
    } catch (Exception e) {
        throw new AuraHandledException(e.getMessage());
    }

} 


        
    }