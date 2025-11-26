import { LightningElement,wire } from 'lwc';
import getAccountsList from '@salesforce/apex/fiveAccountsCls.getAccountsList';
import {updateRecord} from 'lightning/uiRecordApi';
import Id_Account from '@salesforce/schema/Account.Id';
import Account_Name from '@salesforce/schema/Account.Name';
import Account_Phone from '@salesforce/schema/Account.Phone';
import Account_Industry from '@salesforce/schema/Account.Industry';
import Account_Fax from '@salesforce/schema/Account.Fax';



const cols = [


    {label:'Account Name',fieldName:'Name',type:'text' ,editable:true},
    {label:'Account Phone',fieldName:'Phone',type:'phone',editable:true},
    {label:'Account Industry',fieldName:'Industry',type:'text',editable:true},
    {label:'Account Fax',fieldName:'Fax',type:'text',editable:true},
];

export default class FiveAccountsDisp extends LightningElement {

    colss=cols;
    draftValues=[];


    @wire(getAccountsList) accList;

    handleSave(event){



        const fields={};

       

        fields[Id_Account.fieldApiName]=event.detail.draftValues[0].Id;
        fields[Account_Name.fieldApiName]=event.detail.draftValues[0].Name;
        fields[Account_Phone.fieldApiName]=event.detail.draftValues[0].Phone;
        fields[Account_Industry.fieldApiName]=event.detail.draftValues[0].Industry;
        fields[Account_Fax.fieldApiName]=event.detail.draftValues[0].Fax;
        
        const recordApi = {fields};


        updateRecord(recordApi).then(result=>{
            alert('successfully updated'+result.id);
        }).catch();



    }





}