trigger accrec on Account (before insert) {
    
    if(trigger.isbefore && trigger.isinsert){
        for(Account ac : trigger.new){
            
            if(ac.rating == 'Hot'){
                ac.phone = '12345';
                
            }
            
        }
    }

}