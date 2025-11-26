trigger UpdateAccRating on Opportunity (after insert,after update) {
    
     Map<id,opportunity> opIds = new  Map<id,opportunity>();
    
    Map<id,opportunity> oppIds = new  Map<id,opportunity>();
    
    
    if(trigger.isAfter && trigger.isInsert){
        
        for(opportunity opp : trigger.new){
            
            if(opp.StageName == 'çlosed won' && opp.AccountId !=null){
                opIds.put(opp.AccountId,opp);
            }            
        }
    }
    
    List<Account> acList =[select id,name,rating from account where id in: opIds.keyset()];
    
    List<Account> updateAccount = new List<Account>();
    
    system.debug('Account Data'+acList);
   
        for(account a : acList){
            a.rating = 'Hot';
           updateAccount.add(a);
        }
        update updateAccount;
        
    }
    
    
    
    /*
    
    if(trigger.isAfter && trigger.isUpdate){
        
        for(opportunity op : trigger.new){
            
            if(op.StageName == 'closed won'){
                oppIds.put(op.accountid,op);
            }
        }
    }
    
    List<Account> accList = [select id,rating from account where id in :oppIds.keyset()];
    List<Account> updateAcc = new List<Account>();
    
    if(!accList.isEmpty()){
        
        for(Account acc : accList){
            
           acc.rating = 'Hot';
            updateAcc.add(acc);
        }
        if(!updateAcc.isEmpty()){
            update updateAcc;
        }
    } */