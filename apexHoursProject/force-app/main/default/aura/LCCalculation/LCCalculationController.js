({
    
    callme : function(component , event, helper){
        
        var evt = event.getSource();
        var aid = evt.getLocalId();
        
        var a = component.find("avalueid").get("v.value");
        var b = component.find("bvalueid").get("v.value");
        
        
        if(aid == 'add'){
            
            var r = parseInt(a)+parseInt(b);
            
            component.find("resulid").set("v.value",r);
            
        }else if(aid == 'sub'){
            
             var r = parseInt(a)-parseInt(b);
            
            component.find("resulid").set("v.value",r);
            
            
        }else{
            
            var r = parseInt(a)*parseInt(b);
            
            component.find("resulid").set("v.value",r);
        }
        
        
    }
     
   /* addme : function(component, event, helper) {
        
        
        var a = component.find("avalueid").get("v.value");
        var b = component.find("bvalueid").get("v.value");
        var res = parseInt(a)+parseInt(b);
        
        component.find("resulid").set("v.value",res)
        
        console.log('12====>'+a);
        console.log('13====>'+b);
        console.log('14====>'+res);
        
        
        
		
	},
    subme : function(component, event, helper) {
        
        
        var a = component.find("avalueid").get("v.value");
        var b = component.find("bvalueid").get("v.value");
        var res = parseInt(a)-parseInt(b);
        
        component.find("resulid").set("v.value",res)
        
        console.log('29====>'+a);
        console.log('30====>'+b);
        console.log('31====>'+res);
        
        
        
		
	},
    mulme : function(component, event, helper) {
        
        
        var a = component.find("avalueid").get("v.value");
        var b = component.find("bvalueid").get("v.value");
        var res = parseInt(a)*parseInt(b);
        
        component.find("resulid").set("v.value",res)
        
        console.log('46====>'+a);
        console.log('47====>'+b);
        console.log('48====>'+res);
        
        
        
		
	}*/
    
	/*addme : function(component, event, helper) {
        
        var a = component.get("v.aval");
        var b = component.get("v.bval");
        var res = parseInt(a)+parseInt(b);
        
        component.set("v.res",res)
		
	},
    subme : function(component, event, helper) {
        
        var a = component.get("v.aval");
        var b = component.get("v.bval");
        var res = parseInt(a)-parseInt(b);
        component.set("v.res",res);
        
    },
     mulme : function(component, event, helper) {
        
        var a = component.get("v.aval");
        var b = component.get("v.bval");
        var res = parseInt(a)*parseInt(b);
        component.set("v.res",res);
        
    }*/
    
    
})