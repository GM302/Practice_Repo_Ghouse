public class AccountService {

    // Creates an Account
    public static void  createAccount(String name, String phone) {
        Account acc = new Account(
            Name = name,
            Phone = phone
            //Active__c = isActive // custom checkbox field for example
        );
        insert acc;
        
    }

   

}