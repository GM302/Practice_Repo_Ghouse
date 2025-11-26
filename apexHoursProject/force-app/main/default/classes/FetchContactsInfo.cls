/**
* @File Name : FetchContactsInfo.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : September 14, 2024
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | September 14, 2024 |   | Initial Version
**/

public with sharing class FetchContactsInfo {
	@AuraEnabled(cacheable=true)
	Public static List<contact> serachContacts(string searchPhone,string serachEmail){

		string keyPhone = '%'+searchPhone+'%';
		string keyEmail = '%'+serachEmail+'%';

		List<contact> conList = [select id,name,phone,email from contact where phone like:keyPhone or  email like :keyEmail];
		return conList;

		
	}
	
}