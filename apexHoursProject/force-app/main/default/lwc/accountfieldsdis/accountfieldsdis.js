import { LightningElement,api, wire } from 'lwc';

import {getRecord, getFieldValue} from 'lightning/uiRecordApi';

const FIELDS =['Account.Name', 'Account.Phone'];

//import NAME_FIELD from '@salesforce/schema/Account.Name';
//import PHONE_FIELD from '@salesforce/schema/Account.Phone';


export default class Recordviewform extends LightningElement {

    @api recordId;

    @wire(getRecord, {recordId:'$recordId', fields: FIELDS})
    record;

    get name(){

        return this.record.data ? getFieldValue(this.record.data, 'Account.Name') : '';
    }
    get phone(){

        return this.record.data ? getFieldValue(this.record.data, 'Account.Phone') : '';
    }

  
}