/**
* @File Name : ConData.cls
* @Description :
* @Author :
* @Last Modified By :
* @Last Modified On : September 13, 2024
* @Modification Log :
*==============================================================================
* Ver | Date | Author | Modification
*==============================================================================
* 1.0 | September 13, 2024 |   | Initial Version
**/

public with sharing class ConData {
	@AuraEnabled(cacheable=true)
	Public static List<contact> conList(string searchText){

		string key = '%'+searchText+'%';

		List<contact>  conLst = [select id,name,phone,email from contact where name like : key limit 5];
		return conLst;
		
	}
}