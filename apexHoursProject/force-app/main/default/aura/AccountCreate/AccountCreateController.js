({
	save : function(component, event, helper) {
        
        var n = component.get("v.acc.name");
         var p = component.get("v.acc.phone");
         var f = component.get("v.acc.fax");
        
       var action = component.get("c.inserAcc");
        
        action.setParams({"name":n,"phone":p,"fax":f});
        
        action.setCallback(this,function(response){
            
           var state=response.getState();
            if(state=='SUCCESS'){
                var res =response.getReturnValue();
                component.set("v.result",res);
            }
            
        });
        
       $A.enqueueAction(action);
		
	}
})