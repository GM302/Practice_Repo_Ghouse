public class Accounteth {

    @AuraEnabled(cacheable=true)

    public static List<Account> fetchAccounts(){

        List<Account> accList = [select id,name,phone,rating from account where phone !=null and rating !=null  limit 15];
        return accList;

    }

}