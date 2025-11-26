import { LightningElement } from 'lwc';

import { ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class MyFirstCom extends LightningElement {


    myTitle = "Salesforce Noob";


    connectedCallback(){

        let callmyFuction = this.myFunction(10,2);
        window.alert("callmyFuction :"+callmyFuction);
    }


    myFunction = (dividend,divisor) => {

        return(dividend/divisor)

    }

  
}