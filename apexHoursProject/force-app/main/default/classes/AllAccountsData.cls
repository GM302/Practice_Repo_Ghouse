/**
* @File Name : AllAccountsData.cls
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

public class AllAccountsData {
	@AuraEnabled(cacheable=true)
	Public static List<Account> allAccounts(){
		List<Account> accList = [select id,name,phone,rating,(select id,name,email from contacts),(select id,name,stagename from opportunities) from account limit 20];
		return accList;
	}
	
}