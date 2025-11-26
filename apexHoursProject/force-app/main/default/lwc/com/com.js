import { LightningElement, track } from 'lwc';

export default class com extends LightningElement {
    @track isNew = false;
    @track isEdit = false;
    @track accountId;

    handleNewClick() {
        this.isNew = true;
        this.isEdit = false;
        this.accountId = undefined; // Reset accountId for new
    }

    handleEditClick() {
        this.isEdit = true;
        this.isNew = false;
        // Set accountId to the ID of the account you want to edit
        this.accountId = 'YOUR_ACCOUNT_ID_HERE'; // Replace with the actual ID or logic to get it
    }

    handleCancelClick() {
        this.resetForm();
    }

    handleSuccess(event) {
        const updatedRecordId = event.detail.id;
        console.log('Account saved with Id:', updatedRecordId);
        this.resetForm(); // Reset the form after success
    }

    handleError(event) {
        console.error('Error saving account:', event.detail);
    }

    resetForm() {
        this.isNew = false;
        this.isEdit = false;
        this.accountId = undefined;
    }
}