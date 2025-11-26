import { LightningElement } from 'lwc';
export default class PCmp extends LightningElement {

    namep='';

    handleChild(event){


        this.namep=event.detail.text;

    }

}