({
	disp : function(component, event, helper) {
        
        var clm=[
                 {label:"Acc Name", fieldName:"Name", type:"text"},
                 {label:"Acc Phone", fieldName:"Phone", type:"text"},
                 ];
       
            component.set("v.columns",clm);
            
            
		
	},
            show : function(component, event, helper) {
            
                
            var s = component.get("v.serchf");
            
             var action= component.get("c.allaccounts");
            
            action.setParams({"search":s});
                  
            action.setCallback(this,function(response){
               
                   var state = response.getState();
            if(state=='SUCCESS'){
            
                var res= response.getReturnValue();
            component.set("v.flag",true);
                component.set("v.acc",res);
            console.log(res);
            
            }
            
            });
           $A.enqueueAction(action); 
            
            
            
            }       
           
            
               
})