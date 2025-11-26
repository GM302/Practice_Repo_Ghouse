public class NameandEmaildup {
    
    public static void nameEmailDup(list<Contact> EnewRecods, list<contact> EoldRecords){
        
         for(Contact nrec : EnewRecods){
        
        for(Contact orec :EoldRecords){
            
            if(nrec.Id == orec.Id){
                
                if( nrec.LastName == orec.LastName && nrec.Email == orec.Email){
                
                
                nrec.adderror('dupicate not able to create');
                
            }
                
            }
            
            
        }
        
        
    }
        
    }

}