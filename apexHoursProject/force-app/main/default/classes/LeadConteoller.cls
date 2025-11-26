public class LeadConteoller {
    
    public List<Lead> L {get;set;}
    
    public void displayLeads(){
        
        L =[select id,lastname,email from lead];
        
    }

}