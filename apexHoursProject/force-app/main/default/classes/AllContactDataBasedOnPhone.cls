/**
* @File Name : AllContactDataBasedOnPhone.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : September 20, 2024
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | September 20, 2024 |   | Initial Version
**/

public with sharing class AllContactDataBasedOnPhone {
    
    @AuraEnabled(cacheable=true)
    public static List<Contact> allCons(String phoneOrEmail) {
        
        return [SELECT Id, Name, Phone, Email 
                FROM Contact 
                WHERE Phone = :phoneOrEmail OR Email = :phoneOrEmail 
                LIMIT 100];
    }
}