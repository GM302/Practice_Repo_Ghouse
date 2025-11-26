({
	calme : function(component, event, helper) {
        var a = component.get("v.emp");
        var evt = component.getEvent("test");
        evt.setParams({"empname":a});
        evt.fire();
		
	}
})