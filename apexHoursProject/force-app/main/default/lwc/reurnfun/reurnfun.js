import { LightningElement } from 'lwc';

export default class Reurnfun extends LightningElement {

    myTitle="Salesforce Noob";
    

    connectedCallback(){
        console.log('test');
        let name = myFunction(10,2);
        console.log('test1');
        window.alert(name);
        console.log('test2');
        
    }
    
      
   
    /*myFunction(divided,divisor){

        return (divided/divisor);

      
    }*/
   
    myFunction = (divided,divisor) => {
        console.log('test3');
        return (divided/divisor); 
       
       
    }
    
}