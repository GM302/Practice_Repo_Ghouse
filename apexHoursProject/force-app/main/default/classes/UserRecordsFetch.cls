public class UserRecordsFetch {
	@AuraEnabled(cacheable=true)
	Public static List<user> userInfo(){

		List<user> userList =[SELECT Id, Username FROM User];
		return userList;


		
	}
}