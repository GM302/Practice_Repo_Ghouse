public class Json_GeneratorOpp {
    
    public void receivedFromThirdParty(string nm,string stagenm, date closedt,decimal amt){
        
        system.JsonGenerator js = Json.CreateGenerator(true);
        
        js.writeStartObject();
        
        try{
            
            opportunity op = new opportunity();
            op.name =nm;
            op.stagename = stagenm;
            op.CloseDate = closedt;
            op.Amount=amt;
            insert op;
            
            js.writeStringField('Status', 'Success');
            js.writeNumberField('Code', 201);
            
        }catch(exception e){
             js.writeStringField('Status', 'Faild');
            js.writeNumberField('Code', 401);
            
        }
        
        js.writeEndObject();
        
        string result = js.getAsstring();
        system.debug(result);
        
    }

}