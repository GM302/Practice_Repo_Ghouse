public class PreventOppDeletion {
    
    public static void preventOppDel(List<opportunity> oldOpp){
        
        set<id> oppIds = new set<id>();
        
        if(!oldOpp.isEmpty()){
            
            
            for(opportunity op : oldOpp){
                
                if(op.AccountId !=null){
                    oppIds.add(op.AccountId);
                    
                }
                
            }
            
            List<Account> accLst =[select id,(select accountid from contacts) from account where id in : oppIds];
            Map<id,List<contact>> conMap = new   Map<id,List<contact>>();
            for(account ac : accLst){
                List<contact> cons = ac.contacts;
                conMap.put(ac.id,cons);
            }
            
            for(opportunity o : oldOpp){
                
                if(o.accountid !=null && conMap.get(o.accountid).size()>=2){
                    o.adderror('not able to delete more than or 2 contacts having ');
                }
            }
            
        }
          
    }

}