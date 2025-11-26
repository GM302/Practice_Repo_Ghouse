({
	callme : function(component, event, helper) {
        
        var clms =[
            {label: "Account Name", fieldName: "Name", type: "text"},
            {label: "Account Phone", fieldName: "Phone", type: "phone"},
            {label: "Account Rating", fieldName: "Rating", type: "text"}
            
            
                    ];
            
            component.set("v.columns",clms);
		
	},
     
    showme :  function(component, event, helper) {
        
        
        var a = event.getParam("acc");
               

        var accounts = component.get("v.accs");
              

        accounts.push(a);
                       

        component.set("v.accs",accounts);
        
    },
   
})