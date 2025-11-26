import { LightningElement,api } from 'lwc';
export default class LeadEdit extends LightningElement {

@api recordId;

handleRset(event){

    console.log('enter hnadlereset');


    var inputFields= this.template.querySelectorAll('lightning-input-field');

    console.log('enter input'+inputFields);

    inputFields.forEach(field=>{field.reset();});

     console.log('enter infieldput'+field);
}

}