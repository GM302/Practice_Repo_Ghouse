import { LightningElement,track } from 'lwc';

export default class DynamicFormLwc extends LightningElement {

  @track selectedform='';
  @track showName = false;
  @track showEmail = false;
 

  selectedformoptions=[
    {label:'Name' , value:'name'},
    {label:'Email' ,value:'email'},
  ];

  handlechange(event){
    this.selectedform = event.detail.value;
    this.showName =  this.selectedform === 'name';
    this.showEmail =  this.selectedform === 'email';

  }



}