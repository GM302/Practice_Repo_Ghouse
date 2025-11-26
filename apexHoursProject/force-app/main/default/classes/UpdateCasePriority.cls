public class UpdateCasePriority {
    
    public static void updatePriority(List<Case> caseList){
        
        for(Case cs: caseList){
            
            if(cs.Origin == 'Phone'){
                cs.priority = 'High';
            }else{
                cs.priority = 'Low';
            } 
            
        }
        
    }
}