trigger UpdatedConName on Contact (after insert) {
    
    Map<id,contact> conMap = new Map<id,contact>();
    
    if(trigger.isAfter && trigger.isInsert){
        
        for(contact con : trigger.new){
            if(con.accountid !=null){
                conMap.put(con.accountid,con);
                
            }
        }
        
        List<Account> accList = [select id,Name,phone,description,rating,(select id,Name,phone,email from contacts) from account where id in : conMap.keySet()];
        List<Account> accUpdate = new List<Account>();
        if(!accList.isEmpty()){
            for(Account ac : accList){
                ac.description = conMap.get(ac.id).lastname;
                accUpdate.add(ac);
            }
            if(!accUpdate.isEmpty()){
                update accUpdate;
                
            }
        }
    }

}