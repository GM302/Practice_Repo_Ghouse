public class Json_Generator {
    
    public void leadSendingReq(){
        
        system.JsonGenerator js = Json.CreateGenerator(true);
        
        js.writeStartObject();
        
      try{
            
       List<Lead> ledReq = [SELECT Id, Name, Company, Status, AnnualRevenue FROM Lead where AnnualRevenue!=null];
        
        for(Lead led : ledReq){
            
            js.writeStringField('Lead Name',led.Name);
            js.writeStringField('Lead Company',led.Company);
            js.writeStringField('Lead Status',led.Status);
            js.writeNumberField('Lead AnnualRevenue',led.AnnualRevenue);
            js.writeStringField('Status','Success');
            js.writeNumberField('Code',201);
            
            
        }
            
      }catch(exception e){
          
            js.writeStringField('Status','Faild');
            js.writeStringField('Message',e.getMessage()); 
            js.writeNumberField('Code',401);
   
            
        }

        js.writeEndObject();
        
        string result = js.getAsString();
        system.debug(result);
        
        
    }

}