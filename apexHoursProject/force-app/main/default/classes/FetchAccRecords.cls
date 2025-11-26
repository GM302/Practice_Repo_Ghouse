public class FetchAccRecords {
	@AuraEnabled(cacheable=true)
	Public static List<Account> accList(){
		return[select id,name,phone,fax from account  limit 5];
	}
}