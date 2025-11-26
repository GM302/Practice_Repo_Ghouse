import { LightningElement,api } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import { RefreshEvent } from 'lightning/refresh';

import CONTACT_OBJ from '@salesforce/schema/Contact';
import First_Name_Field from '@salesforce/schema/Contact.FirstName';
import LAST_Name_Field from '@salesforce/schema/Contact.LastName';
import Account_ID_Field from  '@salesforce/schema/Contact.AccountId';


export default class AddNewEditFormToCreNewContaAccountRecord extends LightningElement {

    @api recordId;
    objectApiName = CONTACT_OBJ;
    firstName=First_Name_Field;
    lastName=LAST_Name_Field;
    accountId=Account_ID_Field;


    handleSuccess(event){

        const evt = new ShowToastEvent({
            title:"contact created",
            message:"contact is created",
            variant:"success",
            mode:"dismissable"
        });
        this.dispatchEvent(evt);

         this.dispatchEvent(new RefreshEvent());

    }





}