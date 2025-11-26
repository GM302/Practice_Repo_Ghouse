({
	callme : function(component, event, helper) {
        alert('heloo follow me');
        console.log('alet done');
		
	},
    callme2 : function(component, event, helper) {
        alert('heloo contact');
        console.log('alet done');
		
	},
    callme3 : function(component, event, helper) {
        alert('heloo case');
        console.log('alet done');
		
	},
    callme4 : function(component, event, helper) {
        alert('heloo Note');
        console.log('alet done');
		
	},
    submit : function(component, event, helper) {
        alert('enter into submit function');
        
        component.set("v.Fname","Ghouse");
        component.set("v.Lname","mohiddin");
        component.set("v.Age",32);
        component.set("v.Salary",1000000);
      
		
	},
    save : function(component, event, helper) {
        alert('enter into save function');
        
        var a = component.get("v.Fname");
        component.set("v.Lname", a);
        
      
		
	},
})