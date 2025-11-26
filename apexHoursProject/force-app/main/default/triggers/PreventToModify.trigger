trigger PreventToModify on Task (before update) {
    
    Map<id,Task> tMap = new Map<id,Task>();
    
    if(trigger.isBefore && trigger.isUpdate){
        for(task t : trigger.new){
            tMap.put(t.accountid,t);     
        }
        
   List<Account> accList=[select id,myCheckbox__c  from account where id in : tMap.keyset()]; 
        
        if(!accList.isEmpty()){
            
            for(Account ac : accList){
                if(ac.myCheckbox__c != true){
                    
                    ac.adderror('not able to edit');
                    
                }
            }
        }
        
        
        
    }

}