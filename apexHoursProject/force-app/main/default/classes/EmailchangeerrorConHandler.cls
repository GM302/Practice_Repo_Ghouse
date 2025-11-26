public class EmailchangeerrorConHandler {
    
    
    public static void EmailError(List<Contact> Nrecs, List<Contact> Orecs){
        
        for (Contact newR :Nrecs){
            
            for (Contact oldR :Orecs){
                
                
                if(newR.id == oldR.id){
                    
                    if(newR.email != oldR.email ){
                        
                        newR.email.adderror('not allow email chnage');
                        
                        
                    }
                    
                }
            }
            
            
        }
        
        
    }

}