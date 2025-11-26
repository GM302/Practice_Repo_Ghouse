import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class FirstCmps extends LightningElement {

    wishes = 'Good Morning Ghouse';
  

     connectedCallback() {
     console.log('enter');
        window.alert('Hello Ghouse from connected call '+this.wishes);
         console.log('end');
        
    }

    handleClick(){

        console.log('enter');

       const event = new ShowToastEvent({
           title:'error',
           message:'message',
           variant:'info',
           mode:'dismissable'
       });
       this.dispatchEvent(event);
        console.log('end');
    }

}