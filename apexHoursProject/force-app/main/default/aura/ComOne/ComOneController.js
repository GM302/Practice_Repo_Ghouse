({
	callme : function(component, event, helper) {
        
        //component.set("v.val1", "MY comeone set from js controller");
       
        var data ={'Name':'Mohiddin', 'Email':'ghouse213@gmail.com'}
        
        component.set("v.sobj",data);
        
        
        component.set("v.wraperdata", 
                      {'mystrname' :'ghousestringwrp', 'myintsalary':123}
                     )
		
	}
})