public class parser {
    
    public string jsonpaerser {get;set;}
        public Map<string,object> result {get;set;}
    
    public parser(){
       result = new Map<string,object>();
        jsonpaerser = '{"ststus":"success","code":600,"Account":[{"name":"yahoo","phone":"90898"},{"name":"uma","phone":"77677"}]}';
            
       System.JSONParser js = Json.createParser(jsonpaerser);
        
        while(js.nextToken()!=null){
            
            result.put(js.getText(),js.getCurrentToken());
            
            
        }
        
       
       
        
    }

}