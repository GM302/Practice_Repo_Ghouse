public class updateLeadSource {
    
    public static void updateLeadSourceCons(List<Account> accList, Map<id,Account> oldMap){
       Map<id,string> accMap = new Map<id,string>(); 
        system.debug('accMap===========>'+accMap);
        for(Account acc : accList){
            
            if(oldMap != null){
                
                if(acc.Industry != oldMap.get(acc.id).industry && acc.Industry == 'Biotechnology'){
                    accMap.put(acc.id,acc.Industry);
                    system.debug('accMap===========>'+accMap);
                }
                
            }
        }
        
        List<contact> conLst = [select id,LeadSource,accountid from contact where accountid in : accMap.keyset()];
        system.debug('conLst===========>'+conLst);
        List<contact> conUpdate = new List<contact>();
          system.debug('conUpdate===========>'+conUpdate);
        if(!conLst.isEmpty()){
            for(contact con : conLst){
                
                if(con.accountid != null){
                    
                    con.LeadSource = 'Phone';
                    conUpdate.add(con);
                      system.debug('conUpdate===========>'+conUpdate);
                    
                }
                
            }
            if(!conUpdate.isEmpty()){
                update conUpdate;
            }
        }
        
        
        
        
    }

}