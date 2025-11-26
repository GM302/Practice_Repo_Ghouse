import {LightningElement,wire,track} from 'lwc';

import { deleteRecord } from 'lightning/uiRecordApi';

import {refreshApex} from '@salesforce/apex';
import getAccountsLis from '@salesforce/apex/deleteaccountcls.getAccountsLis';
import {RefreshEvent} from 'lightning/refresh';

const colums =[

  {label:'Account Name' , fieldName:'Name' , type:'text'},
  {label:'Account Phone' , fieldName:'Phone' , type:'phone'},
  {label:'Account industry' , fieldName:'Industry' , type:'text'}
];


export default class DeleteRow extends LightningElement {

 

  @track cols=colums;
    wiredresult=[];
    @track accountsList=[];
    @track selectRecord;
   @track error;
  @wire(getAccountsLis) accLis(result){

    this.wiredresult = result;

    if(result.data){

      this.accountsList = result.data;
      console.log('result'+this.accountsList);
      this.error = undefined;

    }
    else if(result.error){
     
      this.error = result.error;
      this.accountsList = [];
      
    }

  }


  handleSelection(event){
    console.log('handlesection enrert');

    if(event.detail.selectedRows.length>0){
      this.selectRecord= event.detail.selectedRows[0].Id;

      console.log('handlesection enrert'+ this.selectRecord);

    }else{
      this.selectRecord = null;
    }
  }

  deleteClick() {
        if (this.selectRecord) {
            deleteRecord(this.selectRecord)
                .then(() => {
                    return refreshApex(this.wiredResult);
                })
                .then(() => {
                    this.selectRecord = null;
                })
                .catch(error => {
                    console.error('Error deleting record:', JSON.stringify(error));
                });
        } else {
            console.warn('No record selected for deletion.');
        }
    }

}