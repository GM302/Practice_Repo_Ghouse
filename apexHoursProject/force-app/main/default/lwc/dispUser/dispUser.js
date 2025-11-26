import { LightningElement,wire } from 'lwc';
import getUserDeatils from '@salesforce/apex/UserCls.getUserDeatils';


const columns =[
    {label:'User FName' ,fieldName:'FirstName', type:'text'},
    {label:'User Email' , fieldName:'Email', type:'email'},
    {label:'User IsActive', fieldName:'IsActive', type:'boolean'},
    {label:'User Alias ', fieldName:'Alias ', type:'text'},
    {label:'User profile ', fieldName:'ProfileId ', type:'text'},
];

export default class DispUser extends LightningElement {


    columns=columns;

    

    @wire(getUserDeatils) userlist;

  

    


}