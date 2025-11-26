public class UsertoCont {
    
    public static void conCreation(List<User> userslist){
        List<contact> lst = new List<contact>();
        for(user EU :userslist){
            
        Contact c = new Contact();
        c.firstname = EU.FirstName;
        c.lastname =EU.LastName;
        c.Email=EU.Email;
            lst.add(c);
        
            
        }
        
       insert lst;   
    }

}