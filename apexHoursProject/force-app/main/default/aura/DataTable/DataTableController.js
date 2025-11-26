({
    loadme : function(component, event, helper) {
        
        var clm = [
            {label: "Account Name", fieldName: "Name", type: "text"},
            
            {label: "Account Phone", fieldName: "Phone", type: "Phone"},
            
            {label: "Account Fax", fieldName: "Fax", type: "text"}
           
        ];
        component.set("v.columns",clm);
        
    },
    searchbutton : function(component, event, helper) {
        
        var st = component.get("v.searcht");
        
        var action =component.get("c.getallAcc");
        
        action.setParams({"sarchtext":st});
        
        action.setCallback(this,function(response){
                           var state = response.getState();
        if(state=='SUCCESS'){
            var res = response.getReturnValue();
            component.set("v.acc",res);
            
        }
                           
                           });
     $A.enqueueAction(action);
       
}

 })