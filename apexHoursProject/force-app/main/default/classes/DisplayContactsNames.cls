public class DisplayContactsNames {
    @auraenabled
    public static List<Contact> getContacts(Id recordId){
        
        List<Contact> conList = new List<Contact>();
        
        conList =[select Id,FirstName,LastName,Email from contact where AccountId =:recordId];
        return conList;        
    }

}