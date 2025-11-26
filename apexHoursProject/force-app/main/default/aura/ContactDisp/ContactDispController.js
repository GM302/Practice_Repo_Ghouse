({
    callme : function(component, event, helper) {
    
    component.set('v.Columns', [
        {label:'Contact FirstName', fieldName:'FirstName', type: 'text'},
        {label:'Contact LastName', fieldName:'LastName', type: 'text'},
        {label:'Email', fieldName:'Email', type:'email'}
        
    ]); 
    
    var action = component.get("c.getContacts");
    
    action.setParams({
    recordId: component.get("v.recordId")
   });
action.setCallback(this,function(response){
    
    
    var state = response.getState();
    
    if(state=="SUCCESS"){
        
        component.set("v.Contacts", response.getReturnValue());
        
    }
    
    
});

$A.enqueueAction(action);

}


})