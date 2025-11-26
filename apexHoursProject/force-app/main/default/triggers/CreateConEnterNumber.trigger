trigger CreateConEnterNumber on Account (after insert) {
    
    if(trigger.isAfter && trigger.isInsert){
        List<contact> conList = new List<contact>();
        for(Account a : trigger.new){
            
            if(a.NumberOfContacts__c !=null){
                
                for(integer i=0;i<a.NumberOfContacts__c;i++){
                    
                    contact con = new contact();
                    con.LastName = 'dada'+i;
                    con.AccountId = a.id;
                    conList.add(con);
                    
                }
                
            }
        
    }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
}