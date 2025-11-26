public class MapClass {
    
    public static void mapMethod(){
        
        //Map<Id,Account> IdToAccMap = new Map<Id,Account>();
        
        List<Contact> conList = [select id from Contact];
        
          Map<Id,Contact> IdToConMap = new Map<Id,Contact>(conList);
          
       Set<id> conIds= IdToConMap.keySet();
        system.debug(conIds);
        
        List<Contact> cons =IdToConMap.values();
        system.debug(cons);
        
        
    }

}