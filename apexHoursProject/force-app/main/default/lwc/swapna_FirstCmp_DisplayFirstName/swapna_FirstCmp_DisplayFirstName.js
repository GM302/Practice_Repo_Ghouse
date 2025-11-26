import { LightningElement } from 'lwc';

export default class Swapna_FirstCmp_DisplayFirstName extends LightningElement {


    name='Ghous';


    handleChange(event){
        this.name = event.target.value;
    }
}