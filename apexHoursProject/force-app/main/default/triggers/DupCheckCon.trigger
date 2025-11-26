trigger DupCheckCon on Contact (before insert,before update) {
    
    if(trigger.isBefore ){
        set<string> lastNameSet = new set<string>();
        set<string> emailSet = new set<string>();
        set<string> phoneSet = new set<string>();
                Map<id,contact> conList = new map<id,contact>([select id,lastname,email,phone from contact where lastname in :lastNameSet or email in :emailSet or phone IN :phoneSet]);

        for(contact con : conList.values()){

            //if(con.LastName !=null || con.Email !=null || con.Phone !=null){
                
                lastNameSet.add(con.LastName);
                emailSet.add(con.Email);
                phoneSet.add(con.Phone);
            //}    
        }

        
        for(contact c : trigger.new){

            if(lastNameSet.contains(c.LastName)){
                c.adderror('duplastname found');
            }
            if(c.email !=null){
                c.adderror('dupliacte email found');
            }
            if(c.phone !=null){
                c.adderror('duplicate phone found');
            }
            
        }
        
    }

}