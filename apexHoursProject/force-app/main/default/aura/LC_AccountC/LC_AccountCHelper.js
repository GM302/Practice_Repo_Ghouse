({
	myHelperMethod : function(component) {
        
        var name = component.get("v.name");
         var phone = component.get("v.phone");
         var industry = component.get("v.industry");
        
        var action = component.get("c.createAcc");
        
        action.setParams({"n":name,"p":phone,"i":industry});
        
        action.setCallback(this,function(response){
            
            var state = response.getState();
            if(state == 'SUCCESS'){
                
            var r = response.getReturnValue();
            component.set("v.flag",true);
            component.set("v.result",r);
            }
            
           
            
            
        });
        
        $A.enqueueAction(action);
		
	}
})