public class UpdateConLeadsource {
    
    public static void updateMethod(List<Account> newcons, Map<id,Account> oldmap){   
        
        List<id> accIds = new List<id>();
          
        for (Account acc : newcons){
            
            if(acc.industry == 'biotechnology' && acc.industry != oldmap.get(acc.id).industry){
                accIds.add(acc.id);
                
            }
            
        }
        if(!accIds.isEmpty()){
            methodM(accIds);  
        }     
    }
    
    
    @future
    public static void methodM(List<id> accountids){
             
        List<contact> conList = [select id,LeadSource,accountid from contact where accountid in : accountids]; 
        List<contact> conUpadte = new List<contact>();
        
        if(!conList.isEmpty()){
            for(contact con : conList){
                con.LeadSource = 'web';
                conUpadte.add(con);
            }
            
            if(!conUpadte.isEmpty()){
                update conUpadte;
            }
            
        }
        
    }
    
    
}