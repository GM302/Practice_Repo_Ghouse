public class Account {
    
    @AuraEnabled(cacheable=true)
    
    public static List<Account> fetchAccounts(){
        List<Account> accList = [select id,name,phone,rating from account where phone !=null and rating !=null  limit 15];
        return accList;
        
    }
    public static void updateOwner(){
List<accout> acclist = [select id,name from account where name like '%ghouse%'];
    }
    
}