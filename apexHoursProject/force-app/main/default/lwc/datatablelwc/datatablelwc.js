import { LightningElement,wire,track } from 'lwc';
import getacclsit from '@salesforce/apex/Displayacc.getacclsit';

const columns = [

    {label:'Name', fieldName: 'Name'},
    {label:'ID', fieldName : 'Id'},

];

export default class Datatablelwc extends LightningElement {


    @track columns = columns;
    @track data =[];


   @wire(getacclsit)
   wireacc({data,error}){

    if(data){
        this.data =data;
    }
    else if(error){
        console.log("error occured");
    }
   }




}