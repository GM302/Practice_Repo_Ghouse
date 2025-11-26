public class taskHandler {
    
    public static void preventTask( List<Task> tasklist){
        
        List<id> admidids = new List<id>();
        
        List<user> existingadminuser =[select id from user where profile.name='system administrator'];
        
        if(!existingadminuser.isEmpty()){
            
            for(user u : existingadminuser){
            
            admidids.add(u.id);
            
        }
            
        }
        
        for(task t : tasklist){
            if(!admidids.contains (userinfo.getUserId())){
                t.adderror('you donot have permision to delete');
                
            }
        }
        
        
    }

}