import { LightningElement } from 'lwc';
export default class ParentCmpCommunication extends LightningElement {

    countCounter =0;

    handleDecremnet(){

        this.countCounter--;

    }

    handleIncrement(){
         this.countCounter++;
    }



}