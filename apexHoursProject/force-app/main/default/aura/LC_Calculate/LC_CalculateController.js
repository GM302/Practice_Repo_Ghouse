({
	addme : function(component, event, helper) {
        
        var aval = component.get("v.aval");
        var bval = component.get("v.bval");
        var res = parseInt(aval)+parseInt(bval);
        component.set("v.res",res);
		
	}
})