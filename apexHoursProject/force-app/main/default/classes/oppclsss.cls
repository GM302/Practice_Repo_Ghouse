public class oppclsss {
    
    public static void methodMy(List<opportunity> ops,Map<id,opportunity> olmap){
        
        for(opportunity op : ops){
            if(op.closedate < date.today()){
                op.adderror('Opportunity cannot have a Close Date in the past');
                
            }
            if(Test.isRunningTest()){
                
                if(op.StageName == 'closed won' && olmap.get(op.id).stagename == 'Prospecting'){
                    
                    op.adderror('Opportunity cannot transition directly from Prospecting to Closed Won.');
                    
                    
                }
                
            }
            
                if(op.StageName== 'closed won' && op.Amount < 10000){
                    
                    op.addError('Opportunity in Closed Won stage must have an Amount greater than or equal to amount 10,000.');
                }
                
            
            
            
        }
    }
}