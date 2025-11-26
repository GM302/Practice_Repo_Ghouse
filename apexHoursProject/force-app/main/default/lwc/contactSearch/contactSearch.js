import { LightningElement,wire} from 'lwc';
import {deleteRecord} from 'lightning/uiRecordApi';
import {refreshApex} from '@salesforce/apex';
import contactData from '@salesforce/apex/ConData.conList';

const columns= [


    {label:'Name' ,fieldName:'Name' , type:'text'},
    {label:'Phone' ,fieldName:'Phone' , type:'phone'},
    {label:'Email' ,fieldName:'Email' , type:'email'},
];


export default class ContactSearch extends LightningElement {

    searchkey;
    cols=columns;
    wireddata=[];
    contactdata=[];
    error;
    selectedRow;
    handleChane(event){

       this.searchkey = event.target.value;
      
    }
     @wire (contactData,{searchText : '$searchkey'}) cons(result){
          this.wireddata=result;
         if(result.data){
          this.contactdata = result.data;
          this.error=undefined;

         }
         else if(result.error){
          this.contactdata = [];
          this.error=result.error;

         }


     }

     handleSelection(event){

        if(event.detail.selectedRows.length>0){
            this.selectedRow=event.detail.selectedRows[0].Id;
        }
     }

     handleDelete(event){
      
       deleteRecord(this.selectedRow).then(()=>{

        return refreshApex(this.wireddata);
       }).catch();

     }

}