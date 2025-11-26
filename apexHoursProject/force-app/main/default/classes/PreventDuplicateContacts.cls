public class PreventDuplicateContacts {
    
    public static void checkingduplicates( list<contact> conlist, Map<id,contact>oldMap){


               set<string> emailset = new set<string>();

                  for(contact c : conlist){
                     emailset.add(c.email);
                  }
                     set<string> phoneset = new set<string>();
                        for(contact c : conlist){
                     phoneset.add(c.phone);
                  }


        
        list<contact> exstingcontacts =[select id,email,phone from contact where (Email IN:emailset or Phone IN : phoneset)];
        system.debug(exstingcontacts);
        
        Map<string,contact> emailMap = new Map<string,contact>();
        Map<string,contact> phoneMap = new Map<string,contact>();
        
        for(contact con: exstingcontacts){
            phoneMap.put(con.phone,con);
            emailMap.put(con.email,con);
        }
        
        for(contact c : conlist){
            
            if(c.email !=null && emailMap.containsKey(c.email))
               {
                c.adderror('dup email');
                
            }
             if(c.phone !=null && phoneMap.containsKey(c.phone)) 
              {
                c.adderror('dup phone');
                
            }
            
            
        }
        
    }

}