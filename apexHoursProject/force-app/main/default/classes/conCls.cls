public class conCls {
   
/*    public static void UpdateConCount(List<contact> conList,map<id,contact> Oldcon){
         set<id> accIds = new set<id>();
        
        for(contact con : conList){
            
            if(con.AccountId !=null){
                
                 accIds.add(con.accountid);
            }
          else  if(con.AccountId != Oldcon.get(con.id).accountid){
                accIds.add(con.accountid);
                accIds.add(Oldcon.get(con.id).accountid);
                
            }
            
           
        }
        List<Account> accList = [select id,totalcontacts__c,(select id from contacts) from account where id in : accIds];
        if(!accList.isEmpty()){
            
            for(Account acc : accList){
                
                acc.totalcontacts__c = acc.contacts.size();
            
            }
            update accList;

            
        }
                
    }
*/
}