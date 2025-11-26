import { LightningElement,track } from 'lwc';
export default class Dynamicf extends LightningElement {

    @track selectedoption=''; 
    @track namefield=false;
    @track emailfield= false;

    options = [

        {label:'selectedoption',value:''},
        {label:'Name',value: 'name'},
        {label:'Email',value: 'email'}
    ];

   handleChange(event){
       
      this.selectedoption = event.detail.value;
      this.namefield =this.selectedoption === 'name';
      this.emailfield =this.selectedoption === 'email';

   }


}