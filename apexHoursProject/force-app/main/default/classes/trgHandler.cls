public class trgHandler
{
    public static void trgMethod(List<Opportunity> oppList,Map<Id,Opportunity> oldMap)
    {
        Set<Id> parentIds = new Set<Id>();
        
        if(!oppList.isEmpty())
        {
            for(Opportunity newOpp : oppList)
            {
                if(oldMap != null)
                {
                    Opportunity oldOpp = oldMap.get(newOpp.Id);
                    
                    if(oldOpp.AccountId != newOpp.AccountId)
                    {
                        parentIds.add(oldOpp.AccountId);
                        parentIds.add(newOpp.AccountId);
                    }
                    else
                    {
                        parentIds.add(newOpp.AccountId);
                    }
                }
                else
                {
                    parentIds.add(newOpp.AccountId);
                }
            }
        }
        
        if(!parentIds.isEmpty())
        {
            List<Account> accList = [Select maxoppname__c ,(Select Name,Amount from Opportunities where Amount != null
                                                       order by Amount desc limit 1) from Account where Id IN : parentIds];
            List<Account> listToUpdate = new List<Account>();
            
            if(!accList.isEmpty())
            {
                for(Account acc : accList)
                {
                    if(!acc.Opportunities.isEmpty())
                    {
                        acc.maxoppname__c  = acc.Opportunities[0].Name;
                        listToUpdate.add(acc);
                    }
                    else
                    {
                        acc.maxoppname__c  = '';
                        listToUpdate.add(acc);
                    }
                }
            }
            if(!listToUpdate.isEmpty())
            {
                update listToUpdate;
            }
        }
    }
}