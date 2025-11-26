import { LightningElement } from 'lwc';
export default class ChildCmpCommunication extends LightningElement {

    SubHandleClick(event){

        this.dispatchEvent(new CustomEvent('minus'));

    }

    addHandleClick(event){

         this.dispatchEvent(new CustomEvent('add'));


    }

}