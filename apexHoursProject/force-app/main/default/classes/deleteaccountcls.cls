public with sharing class deleteaccountcls {

   @auraenabled(cacheable=true)
    public static List<Account> getAccountsLis(){

        List<Account> accs = [select id,name,phone,fax,industry from account  limit 5];
        return accs;

    }
}