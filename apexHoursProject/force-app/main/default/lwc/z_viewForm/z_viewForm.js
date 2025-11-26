import { LightningElement,wire} from 'lwc';
import {deleteRecord} from 'lightning/uiRecordApi';
import {refreshApex} from '@salesforce/apex';
import fechAccounts from '@salesforce/apex/FetchAccRecords.accList';


const columns = [

    {label:'Account Name', fieldName:'Name', type:'text'},
    {label:'Account Phone', fieldName:'Phone', type:'Phone'},
    {label:'Account Fax', fieldName:'Fax', type:'text'}


];

export default class Z_viewForm extends LightningElement {

     cols=columns;
    
     wiredData =[];
     accountsdata=[];
     error;
     selectedRow;

  @wire(fechAccounts) accounts(result){
     this.wiredData=result;

     if(result.data){
      this.accountsdata=result.data;
      this.error=undefined;
     }
     else if(result.error){

          this.error= result.error;
          this.accountsdata=[];

     }



  }

       
handleSelection(event) {
        if(event.detail.selectedRows.length > 0){
         this.selectedRow = event.detail.selectedRows[0].Id;
          
        }
    }

  

    
     deleteRec(event){

      alert('eneter delete')

      deleteRecord(this.selectedRow).then(()=>{
       
        refreshApex(this.wiredData);
      }).catch();
     }





  }