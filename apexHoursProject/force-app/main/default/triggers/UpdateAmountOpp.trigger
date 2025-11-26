trigger UpdateAmountOpp on Opportunity (before update) {
    
    if(trigger.isBefore && trigger.isUpdate){
        
        set<id> opIds = new set<id>();
        
        for(Opportunity opNew : trigger.new){
            opportunity opOld = trigger.oldmap.get(opNew.id);
            if(opNew.stagename != opOld.stagename){  
                   opNew.Amount = opNew.Probability * opNew.ExpectedRevenue;   
            }   
        }
        

        
        
          
    }

}