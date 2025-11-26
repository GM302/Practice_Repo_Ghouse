trigger UpdaeContacsPhoneWithAccPhone on Account (after update) {
    
    Map<id,string> accIdMap = new Map<id,string>();
    
    if(trigger.isAfter && trigger.isupdate){
        
        for(Account acc : trigger.new){
            
            if(acc.phone !=null){
               accIdMap.put(acc.id,acc.Phone); 
                
            }
            
        }
        List<contact> coList = [select id,accountid,phone from contact where accountid in : accIdMap.keyset()];
        
        List<contact> updateConist = new List<contact>();
        
        if(!coList.isEmpty()){
            
            for(contact con : coList){
                
                con.phone = accIdMap.get(con.accountid);
                updateConist.add(con);
            }
            
        }
        if(!updateConist.isEmpty()){
            update updateConist;
        }
    }

}