trigger CreateTaskForAccOwner on Opportunity (after delete) {
    
    if(trigger.isAfter && trigger.isDelete){
        
       Map<id,opportunity> oppMap = new Map<id,opportunity>();
        
        for(opportunity op : trigger.old){
             oppMap.put(op.AccountId,op);
            
        }
        
        List<Account> accList = [select id,ownerid from account where id in : oppMap.keyset()];
        List<task> tsList = new List<task>();        
        for(Account ac : accList){
              for(opportunity op : trigger.old){
            
            task t = new task();
            t.subject ='check why delte';
            t.OwnerId = ac.ownerid;
             tsList.add(t);     
            
        }
            
        }
      
        if(!tsList.isEmpty()){
            insert tsList;
            
        }        
    }

}