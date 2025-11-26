import { LightningElement,track } from 'lwc';
export default class DynamicformCmps extends LightningElement {

   @track selectedValue='';
   @track  emailSelected = false;
   @track  nameSelected =false;

    selectedOptions=[
        {label:'selected value', value:''},
        {label:'Name', value:'name'},
         {label:'Email', value:'email'}
    ];

     handleChange(){
        this.selectedValue = event.detail.value;
        this.nameSelected = this.selectedValue === 'name';
        this.emailSelected = this.selectedValue === 'email';

     }
}