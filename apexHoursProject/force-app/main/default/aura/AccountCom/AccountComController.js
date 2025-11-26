({
	doInit : function(component, event, helper) {
        
        var action= component.get("c.getAccoun");
        
        action.setCallback(this,function(response){
            
            var state = response.getState();
            
            if(state == "SUCCESS"){
                
                component.set("v.Accountlist", response.getReturnValue());
            }
            
        });
        $A.enqueueAction(action);
		
	}
})