public class opportunityHandler {
    
    public static void coninsertOPPcreates(Set<id> oppids){
        
       List<opportunity> oplst = [select name,description from opportunity where id in :oppids ];
        
        List<contact> conlst = new List<contact>();
        
        for (opportunity o: oplst){
            
            contact con = new contact();
            con.lastname = o.name;
            con.Description = o.description;
            conlst.add(con);
            
        }
        insert conlst;
        
        
    }

}