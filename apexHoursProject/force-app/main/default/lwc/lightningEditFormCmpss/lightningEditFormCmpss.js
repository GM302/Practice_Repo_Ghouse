import { LightningElement,api } from 'lwc';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {RefreshEvent} from 'lightning/refresh';

import Conatct_Obj from '@salesforce/schema/Contact';
import Conatct_Fname from '@salesforce/schema/Contact.FirstName';
import Conatct_Lastname from '@salesforce/schema/Contact.LastName';
import Account_ID_Field from '@salesforce/schema/Contact.AccountId';

export default class LightningEditFormCmpss extends LightningElement {

    @api recordId;

    contact = Conatct_Obj;
    firstName = Conatct_Fname;
    lastName = Conatct_Lastname;
    accountId = Account_ID_Field;


    handleSuccess(){
        const evt = new ShowToastEvent({
            title:'success',
            message:'success message',
            variant:'success',
            mode:'dismissable'
        });
        this.dispatchEvent(evt);
        this.dispatchEvent(new RefreshEvent());
    }


}