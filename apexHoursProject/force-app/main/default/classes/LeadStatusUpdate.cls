public class LeadStatusUpdate {
    
    public static void updateStatusLead(List<Lead> leadList){
        
        for(Lead lds : leadList){
            
            lds.status = 'Working-Contacted';
            
        }
        
    }

}