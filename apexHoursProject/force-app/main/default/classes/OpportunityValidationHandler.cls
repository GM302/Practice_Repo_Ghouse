public class OpportunityValidationHandler {
    
    public static void OpportunityValidationMethod(List<opportunity> opplst,Map<id,opportunity> olmap){
        
        for(opportunity op : opplst){
            if(op.closedate < system.today()){
                op.adderror('not be past date');
            }
            if(op.StageName=='closed won' &&  olmap.get(op.id).StageName=='prospecting'){
                
                op.adderror('not directly from pros to close won');
                
            }
            if (op.StageName == 'Closed Won' && op.Amount < 10000) {
                op.addError('Opportunity in Closed Won stage must have an Amount greater than or equal to amount 10,000.');
            }
        }
        
    }

}