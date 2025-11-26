({
    showme : function(component, event, helper) {

        var action = component.get("c.giveData");

        
        
        action.setCallback(this, function (response) { 
            var state = response.getState();
            if (state == 'SUCCESS') {
                var result = response.getReturnValue();
                component.set("v.acc", result); 
            } 
        });
        $A.enqueueAction(action); 
        
    }
})