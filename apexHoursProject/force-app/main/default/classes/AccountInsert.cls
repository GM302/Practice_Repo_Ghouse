public class AccountInsert {
    
    @auraenabled
    public static string inserAcc(string name,string phone,string fax){
        
        string result;
        try{
            
        Account a = new Account();
        a.Name=name;
        a.Phone=phone;
        a.Fax=fax;
        insert a;
        result ='Account created successfully'+a.id;
            
        }catch(exception e){
            
            result='Error occer'+e.getMessage();
            
        } 
        
        
       return result; 
        
    }

}