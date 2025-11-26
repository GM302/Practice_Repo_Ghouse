public class Displayacc {
    @auraenabled(cacheable=true)
    public static List<Account> getacclsit(){
        
        List<Account> acclst =[select id,name from account];
        
        return acclst;
        
    }

}