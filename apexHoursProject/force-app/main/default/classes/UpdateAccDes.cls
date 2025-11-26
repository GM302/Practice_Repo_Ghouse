public class UpdateAccDes {
    
    public static void updateAccDescription(List<contact> conList,Map<id,contact> oldMap){
        Map<id,contact> conMap = new Map<id,contact>();
        for(contact con : conList){
            
            if(con.Description != oldMap.get(con.id).description){
                conMap.put(con.AccountId,con);
                
            }
        }
        
        List<Account> accList = [select id,description from account where id in : conMap.keyset()];
        List<Account> accUpadted = new List<Account>();
        for(Account acc  : accList){
            
            acc.description = conMap.get(acc.id).description;
            accUpadted.add(acc);
        }
        if(!accUpadted.isEmpty()){
            update accUpadted;
        }
    }

}