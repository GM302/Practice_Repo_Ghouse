public class Contactcls{
    @auraenabled
    public static list<contact> getContacts(){
        
        List<contact> conslt=[select lastname,email from contact];
        return conslt;
        
    }

}