({
	Insert : function(component, event, helper) {
        
        var evt = event.getSource();
        var aid = evt.getLocalId();
        
        var am = component.find("amou").get("v.value");
        var rt = component.find("rat").get("v.value");
        var te = component.find("ter").get("v.value");
        
       
        
        if(aid=='simb'){
            
           var res= (am*rt*te/100);
            
            var s = component.find("si").set("v.value",res);
            
        }else if(aid == 'comb'){
            
            var re= (am*rt*te/100);
              var ress= parseInt((am*rt*te/100)) + parseInt(am);
            
            
            var ss = component.find("ci").set("v.value",ress);
            
        }
        
       
	},
    
    
})