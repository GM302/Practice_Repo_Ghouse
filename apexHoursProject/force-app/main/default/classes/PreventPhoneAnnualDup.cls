public class PreventPhoneAnnualDup {
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 /*   
    public static void preventDup(List<Account> accList){
        
            
    Set<String> phoneSet = new Set<String>();
    Set<Decimal> annuSet = new Set<Decimal>();
    
    for(Account ac : accList) {
        phoneSet.add(ac.Phone);
        annuSet.add(ac.AnnualRevenue);   
    }
    
    Set<String> extingphoneSet = new Set<String>();
    Set<Decimal> extingannSet  = new Set<Decimal>();
    
    for(Account eachAccount : [SELECT Id, 
                                 Phone, 
                                 AnnualRevenue
                               FROM Account 
                               WHERE Phone IN : phoneSet 
                               OR AnnualRevenue IN : annuSet])
    {
        extingphoneSet.add(eachAccount.Phone);
        extingannSet.add(eachAccount.AnnualRevenue);
        
    } 
    
    for(Account acc : accList){
  
        if(extingphoneSet.size()>0){
            if(acc.Phone != NULL && acc.Phone != ''){
                if(extingphoneSet.contains(acc.Phone)){
                    acc.Phone.addError('Phone Number already exists');
                }   
            }      
        }
        
        if(extingannSet.size()> 0){         
            if(acc.AnnualRevenue != NULL ){
                if(extingannSet.contains(acc.AnnualRevenue)){
                    acc.AnnualRevenue.adderror('Annual revenue already exists');
                }
            } 
        }       
    }       
  }
*/
}