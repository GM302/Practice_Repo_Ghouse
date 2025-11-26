import { LightningElement,api,wire } from 'lwc';

import {getRecord,getFieldValue} from 'lightning/uiListApi';

import NAME_FIELD from '@salesforce/schema/Account.Name';
import PHONE_FIELD from '@salesforce/schema/Account.Phone';


export default class Recordviewform extends LightningElement {

    @api recordId;

    @wire(getRecord, {recordId:'$recordId', fields:[NAME_FIELD,PHONE_FIELD]})
    record;

    get name(){

        return this.record.data ? getReturnValue(this.record.data, NAME_FIELD) : '';
    }
    get phone(){

        return this.record.data ? getReturnValue(this.record.data, NAME_FIELD) : '';
    }

  
}