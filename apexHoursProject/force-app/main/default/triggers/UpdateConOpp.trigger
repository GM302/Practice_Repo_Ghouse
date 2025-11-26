trigger UpdateConOpp on Account (after update) {
    set<id> accIds = new set<id>();
    
    if(trigger.isAfter && trigger.isUpdate){
        for(Account acc : trigger.new){
            if( acc.Active__c == 'No'){
                accIds.add(acc.id);
            }
          List<contact> conList = [select id,accountid,lastname from contact where accountid in : accIds]; 
            List<contact> updateCons = new List<contact>();
            for(contact con : conList){
                
                con.email = 'ghou213@yahoo.com';
                updateCons.add(con);
                
            }
            if(!updateCons.isEmpty()){
                update updateCons;
            }
            
        }
    }

}