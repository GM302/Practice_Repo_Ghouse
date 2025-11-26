import { LightningElement, track } from 'lwc';
import getAccounts from '@salesforce/apex/AccountRecordsFetch.accRecs';

export default class MyComponent extends LightningElement {
    @track phoneOrEmail = '';
    @track FinalsData = [];
    @track cols = [
        { label: 'Name', fieldName: 'Name' },
        { label: 'Phone', fieldName: 'Phone' },
        { label: 'Email', fieldName: 'Email__c' }
    ];

    handleChange(event) {
        this.phoneOrEmail = event.target.value;
    }

    handleClick() {
        getAccounts({ sPhoneOrEmail: this.phoneOrEmail })
            .then(result => {
                if (result.length > 0) {
                    this.FinalsData = result;
                } else {
                    this.FinalsData = [];
                    console.log('No matching accounts found');
                }
            })
            .catch(error => {
                console.error('Error fetching accounts', error);
            });
    }
}