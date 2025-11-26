import { LightningElement,track } from 'lwc';

import getContacts from '@salesforce/apex/Contactcls.getContacts';

const columns =[
    {label : 'LastName' , fieldName: 'LastName'},
    {label : 'Email',  fieldName: 'Email'},
];

export default class Datatable extends LightningElement {

    property = true;


@track columns = columns;
@track data =[];
    
connectedCallback(){
   // property = true;

    getContacts()
    .then(result =>{

        this.data = result;

    })
    .catch(error =>{
        console.log("error");
    })

}

}