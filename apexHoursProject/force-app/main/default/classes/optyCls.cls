public class optyCls {
    
@AuraEnabled(cacheable=true)
    public static List<opportunity> getOpty(){
        List<opportunity> opps = [select id,name,stagename,closedate from opportunity];
        return opps;


    }

}