({
	simple : function(component, event, helper) {
        
        var P = component.get("v.enterP");
         var R = component.get("v.rateInterest");
         var T = component.get("v.term");
        var I = ((P*R*T)/100);
        component.set("v.interest",I);
        
		
	},
    cominterest : function(component, event, helper) {
        
        var P = component.get("v.enterP");
        var R = component.get("v.rateInterest");
        var T = component.get("v.term");
        var I = ((P*R*T)/100);
        
        var M = parseInt(I)+parseInt(P);
             
        component.set("v.meturityAmount",M);
        
		
	},
    clear : function(component, event, helper) {
        
         component.set("v.enterP","");
         component.set("v.rateInterest","");
         component.set("v.term","");
        
        component.set("v.interest","");
             
        component.set("v.meturityAmount","");
        
		
	}
    
})