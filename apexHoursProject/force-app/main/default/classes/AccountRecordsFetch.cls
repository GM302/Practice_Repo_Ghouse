/**
* @File Name : AccountRecordsFetch.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : September 15, 2024
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | September 15, 2024 |   | Initial Version
**/

public with sharing class AccountRecordsFetch {
    @AuraEnabled(cacheable=true)
    public static List<Account> accRecs(String sPhoneOrEmail) {
        return [SELECT Id, Name, Phone, Email__c FROM Account WHERE Phone = :sPhoneOrEmail OR Email__c = :sPhoneOrEmail];
    }
}