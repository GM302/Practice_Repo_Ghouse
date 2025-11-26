import { LightningElement } from 'lwc';

export default class Varletconstcom extends LightningElement {

    varfunction= "salesforce noob";

    connectedCallback(){

        
        let name = "testnoob";
        if(this.varfunction){
           

          window.alert(name);                    


        }
        window.alert(name);
      

    }
}