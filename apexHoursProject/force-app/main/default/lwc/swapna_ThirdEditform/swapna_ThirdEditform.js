import { LightningElement,api } from 'lwc';

export default class Swapna_ThirdEditform extends LightningElement {

    @api recordId;

    handleClick(event){

        const inputs = this.template.querySelectorAll("lightning-input-field");
        inputs.forEach(field=>field.reset());

    }
}