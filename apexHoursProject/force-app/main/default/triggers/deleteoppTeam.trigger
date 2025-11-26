trigger deleteoppTeam on Opportunity (after update) {
    
    if(trigger.isAfter && trigger.isUpdate){
        
        Map<id,opportunity> oppMap = new Map<id,opportunity>();
        
        for(Opportunity op : trigger.new){
            
            if(op.stagename == 'closed lost'){
                oppMap.put(op.id,op);
                
            }
        }
        
        List<opportunityTeamMember> memList = [select id,OpportunityId from opportunityTeamMember where OpportunityId in : oppMap.keyset()];
        
        if(!memList.isEmpty()){
            
            for(opportunityTeamMember opp : memList){
                
                delete opp;
                
                
            }
            
        }
    }

}