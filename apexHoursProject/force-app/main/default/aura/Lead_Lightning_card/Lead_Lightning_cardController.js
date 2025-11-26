({
	callme : function(component, event, helper) {
        
        component.set("v.title", "Ghouse");
        component.set("v.company", "SFDC");
        component.set("v.phone", "998589999");
        component.set("v.email" , "g@gmail.com");	
	},
    clearme : function(component, event, helper) {
        
        component.set("v.title" , "");
        component.set("v.company" , "");
        component.set("v.phone" , "");
        component.set("v.email" , "");	
	}
    
})