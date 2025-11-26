({
    callme : function(component, event, helper) {

        var p = component.get("v.princeple");
        var r=component.get("v.rate");
        var t = component.get("v.term");

        var res = (p*r*t)/100;

        if(res>10){
            component.set("v.flag",true);

        }else{
            component.set("v.flag",false);
        }

        component.set("v.Interest",res);

    }
})