public class wireCls {
@AuraEnabled(cacheable=true)
   
    public static List<Account> getAccounts(){

        List<Account> accList = [select id,name,phone from account where name like '%Ghouse%' and phone !=null];
        return accList;


    }

}