import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Butcmp extends LightningElement {


    myTitle = "Salesforce Noob";

    handleClick(){
       this.showToast(this.myTitle);
       console.log('ddsdhfgkjfgj');
    }
    showToast(fisrtfunct){

        const event = new ShowToastEvent({

            title:fisrtfunct,
            message : 'hey bro toast',
            variant:'error'
        })
        this.dispatchEvent(event);

    }



   
}