import { LightningElement,wire } from 'lwc';
import contactsData from '@salesforce/apex/AllContactDataBasedOnPhone.allCons';

const columns=[

    {label:'Conatct Name' ,fieldName:'Name' ,type:'text'},
    {label:'Conatct phone' ,fieldName:'Phone' ,type:'phone'},
    {label:'Conatct email' ,fieldName:'Email' ,type:'email'}
];

export default class AllContactsBasedOnPhoneEmail extends LightningElement {
    phone;
    email;
    cols=columns;

    @wire(contactsData,{phoneOrEmail:'$phone',phoneOrEmail:'$email'}) cons;

    handlePhone(event){

        this.phone = event.target.value;

    }
     handleEmail(event){

        this.email = event.target.value;

    }





}