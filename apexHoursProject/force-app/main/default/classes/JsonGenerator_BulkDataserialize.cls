public class JsonGenerator_BulkDataserialize {
    
    public void GeneratorMethod(string nm , string ph, string ind){
        
        system.JSONGenerator  js = JSON.createGenerator(true);
        
        js.writeStartObject();
        
        try{
            Account a = new Account();
            a.name = nm;
            a.phone= ph;
            a.Industry = ind;
            insert a;
            
            js.writeStringField('Status','success');
            js.writeIdField('accountid', a.Id);
            js.writeStringField('Message' , 'successfully account created');
            js.writeNumberField('code', 100);
                
        }catch(exception e){
            js.writeStringField('Status','Failed');
            js.writeStringField('Message' , e.getMessage());
            js.writeNumberField('code', 200);
                
        }
        
        js.writeEndObject();
        
        string result = js.getAsString();
        system.debug(result);
        
        
        
        
    }

}