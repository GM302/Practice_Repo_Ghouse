({
	handleCkeck : function(component, event, helper) {
        
        
        var button = event.getSource();
        var message = button.get("v.label");
        
        if(message == 'Clickme'){
            component.set("v.meaasge1", message);
            
        }else{
           component.set("v.meaasge2", message); 
        }
        
        
		
	}
    
})