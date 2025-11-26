({
	saveme : function(component, event, helper) {
        
      var ac = component.get("v.newacc");
        
       var e = component.getEvent("passev");
       e.setParams({"acc":ac});
       e.fire();
        
        
     
		
	},
    
    clearme : function(component,event,helper){
        
        
        component.set("v.newacc","");
        
    }
})