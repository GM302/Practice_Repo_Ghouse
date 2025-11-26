import { LightningElement } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';

export default class Jackcom extends LightningElement {


     myTitle="Salesforce Noob";

     handleClick(){
          this.showToast(this.myTitle);
     }

     showToast(mypara){

          const eve = new ShowToastEvent({

               title:mypara,
               message:'rey ghouse toast',
               variant:'success',
          })
          this.dispatchEvent(eve);


     }

}