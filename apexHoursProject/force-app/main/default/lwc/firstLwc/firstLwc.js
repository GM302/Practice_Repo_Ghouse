import { LightningElement } from 'lwc';
export default class FirstLwc extends LightningElement {

    fname;
    handleChange(event){

        this.fname = event.target.value;
    }

}