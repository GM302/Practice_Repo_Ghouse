import { LightningElement,api,wire } from 'lwc';
import Contact_Obj from '@salesforce/schema/Contact';
import Contact_LastName from '@salesforce/schema/Contact.LastName';
import Contact_Email from '@salesforce/schema/Contact.Email';

export default class ForEachUsingContacts extends LightningElement {

    @api recordId;
    contact = Contact_Obj;
    lastname = Contact_LastName;
    email = Contact_Email;


}