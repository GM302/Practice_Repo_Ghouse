import { LightningElement } from 'lwc';
export default class Timeout extends LightningElement {

     myCallbackFunction(){
    console.log('in myCallbackFunction');
    window.setTimeout(myCallbackFunction, 1);
   }


}