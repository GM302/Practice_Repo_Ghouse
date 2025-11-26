import { LightningElement,api } from 'lwc';
import Account_Name from '@salesforce/schema/Account.Name';
import Account_Phone from '@salesforce/schema/Account.Phone';
import Account_Fax from '@salesforce/schema/Account.Fax';
import Account_Industry from '@salesforce/schema/Account.Industry';

export default class RecordFormDisp extends LightningElement {

    @api recordId;
    @api objectApiName;

    fields=[Account_Name,Account_Phone,Account_Fax,Account_Industry];


}