trigger AfterUpdate on Account (after update) {
    Map<id,Account> accMap = new Map<id,Account>();
    if(trigger.isAfter && trigger.isUpdate){    
        for(Account acc : trigger.new){
            if(acc.description !=null && acc.description != trigger.oldmap.get(acc.id).description){
                accMap.put(acc.id,acc);
            }
        }
        List<Account> accList = [select id,description,(select id,description from contacts),(select id,description from opportunities) from account 
                                where id in : accMap.keySet()];
        List<contact> conUpdate = new List<contact>();
        List<opportunity> oppUpdate = new List<opportunity>();
        if(!accList.isEmpty()){    
            for(Account ac : accList){    
                for(contact con : ac.contacts){
                    con.description = ac.description;
                    conUpdate.add(con);
                } 
                for(opportunity op : ac.opportunities){
                    op.description = ac.Description;
                    oppUpdate.add(op);      
                } 
            }
            if(!conUpdate.isEmpty()){
                update conUpdate;
            }
             if(!oppUpdate.isEmpty()){
                update oppUpdate;
            }   
        }
    }
}