public class Errorclas {
    
    public static void emailError(set<id> nconids , set<id> oldconids){
        
        list<contact> clstn =[select id,email from contact where Id IN : nconids];
        system.debug('clstn========= '+clstn);
        list<contact> clsto =[select id,email from contact where Id IN : oldconids];
        
        system.debug('clsto========= '+clsto);
        
        for(Contact cn : clstn){

        for(Contact co : clsto){
            
            if(cn.id == co.id){
                if(cn.email != co.email){
                    cn.email.adderror('error email notchage');
                }
            }
        
        
       }
        
    }
    }
}