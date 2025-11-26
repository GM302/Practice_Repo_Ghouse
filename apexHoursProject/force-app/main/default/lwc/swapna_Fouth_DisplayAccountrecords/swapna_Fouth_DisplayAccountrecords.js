import { LightningElement,wire } from 'lwc';
import getUserInoo from '@salesforce/apex/userapex.getUserIn';


const columns =[
    {label:'User FName' ,fieldName:'FirstName', type:'text'},
    {label:'User Email' , fieldName:'Email', type:'email'},
    {label:'User IsActive', fieldName:'IsActive', type:'boolean'},
    {label:'User Alias ', fieldName:'Alias ', type:'text'},
    {label:'User profile ', fieldName:'ProfileId ', type:'text'},
];

export default class DispUser extends LightningElement {


    columns=columns;

    

    @wire(getUserInoo) userlist;

  

    


}