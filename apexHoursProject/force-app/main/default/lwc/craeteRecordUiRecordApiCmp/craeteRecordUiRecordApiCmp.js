import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import  Account_Obj from '@salesforce/schema/Account';
import Account_Name from '@salesforce/schema/Account.Name';

export default class CraeteRecordUiRecordApiCmp extends LightningElement {

    name = '';


    handleChange(){
        this.name = event.target.value;
    }

    CreatehandleClick(){

        const fields={};
        fields[Account_Name.fieldApiName]= this.name;
        const recordInput={apiName:Account_Obj.objectApiName,fields};
        createRecord(recordInput)
        .then(result => {
            
            const evt = new ShowToastEvent({
                title:'SuccessTitle',
                message:'SuccessMessage',
                variant:'success',
                mode:'dismissable'
            });
            this.dispatchEvent(evt);
        })
        .catch(error=>{
           
             const evt = new ShowToastEvent({
                title:'Failed',
                message:'ErrorMessage',
                variant:'error',
                mode:'dismissable'
            });
            this.dispatchEvent(evt);
        });



    }

}