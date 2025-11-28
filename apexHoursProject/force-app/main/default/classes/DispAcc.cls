/**
* @File Name : DispAcc.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : September 29, 2024
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | September 29, 2024 |   | Initial Version
**/

public with sharing class DispAcc {
	@AuraEnabled
	Public static List<Account> fetchAcc(string sPhone,string sEmail){

		List<Account> acc1 = [select Id,Name,Phone,Email__c from account where Phone =:sPhone OR Email__c =:sEmail limit 1];

		return acc1; 
		
	}
}