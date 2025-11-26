public class taskcls {
    public static void myMethod(List<task> taskes){
        
           set<id> uidss = new set<id>();
 
       List<user> uids = [select id from user where profile.name ='system administrator']; 
        for(user u : uids){
            uidss.add(u.id);
        }
        
        for(task t : taskes){
            
            if(!uidss.contains (userinfo.getuserid())){
                t.adderror('no access to delteeeeeeeeeeeeeeeeee');
                
            }
           
            
        }
    
        
    }
    
   

}