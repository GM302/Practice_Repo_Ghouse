public class APIClass {
    
    public static void makeCallOut(){
        
        Http http = new Http();
        
        httpRequest req = new httpRequest();
        req.setEndpoint('callout:ClimateAPI/');
        req.setMethod('GET');
        httpResponse res = http.send(req);
        
        if(res.getStatusCode() == 200){
            system.debug('Made a call out successfully'+res.getbody());
        }
    }

}