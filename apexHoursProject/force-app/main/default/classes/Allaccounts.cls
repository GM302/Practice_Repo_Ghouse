public class Allaccounts {
    @auraenabled
    public static List<Account> acclst(){
        List<Account> accss = [select id,name from account];
        
        return accss;
    }
    
    @auraenabled
    public static List<contact> consRelatedAccount(string seledtedaccountid){
        
        List<contact> conList =[select accountid,name,email from contact where accountid =: seledtedaccountid];
        
        return conList;
        
    }

}