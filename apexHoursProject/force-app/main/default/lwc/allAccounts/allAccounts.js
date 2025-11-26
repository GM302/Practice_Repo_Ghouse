import { LightningElement, wire, track } from 'lwc';
import getAccountsWithRelatedData from '@salesforce/apex/AllAccountsData.allAccounts';


export default class AccountList extends LightningElement {
    @track accounts;   // Holds account data
    @track contacts;   // Holds contact data
    @track opportunities; // Holds opportunity data
    @track error;      // Holds error information

    // Define columns for Account, Contacts, and Opportunities datatable
    accountColumns = [
        { label: 'Account Name', fieldName: 'Name' }
    ];

    contactColumns = [
        { label: 'Contact Name', fieldName: 'Name' },
        { label: 'Email', fieldName: 'Email' }
    ];

    opportunityColumns = [
        { label: 'Opportunity Name', fieldName: 'Name' },
        { label: 'Stage', fieldName: 'StageName' }
    ];

    // Wire service to call the Apex method
    @wire(getAccountsWithRelatedData)
    wiredAccounts({ error, data }) {
        if (data) {
            // Process data to flatten structure for the datatable
            this.accounts = data;
            this.contacts = [];
            this.opportunities = [];

            data.forEach(acc => {
                // Extract related contacts and opportunities
                if (acc.Contacts) {
                    this.contacts.push(...acc.Contacts);
                }
                if (acc.Opportunities) {
                    this.opportunities.push(...acc.Opportunities);
                }
            });
            this.error = undefined;
        } else if (error) {
            this.error = error;
            this.accounts = undefined;
            this.contacts = undefined;
            this.opportunities = undefined;
        }
    }
}