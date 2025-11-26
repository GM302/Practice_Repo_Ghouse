import { LightningElement } from 'lwc';
import accountsData from '@salesforce/apex/AccountRecordsFetch.accRecs';
const columns =[

    {label:'Account Name' , fieldName:'Name' , type:'text'},
    {label:'Account Phone' , fieldName:'Phone' , type:'phone'},
    {label:'Account Email' , fieldName:'Email__c' , type:'email'}
];
export default class AccountsRecsCmp extends LightningElement {

    phone;
    email;
    customerData;
    message;
    cols=columns;


    handlechange(event){

       

        var input = this.template.querySelectorAll('lightning-input');

        input.forEach(function(element){

            if(element.name == 'ph'){
                this.phone = element.value;
                 
            }
            else if(element.name == 'em'){
                this.email = element.value;
                   
            }
        },this);

    }

    handleClick(event){

        alert('enter click')

       accountsData({aPhone:this.phone,aEmail:this.email})
         .then(result=>{

          this.customerData=result.data;

          alert('enter click'+this.customerData)

         })
         .catch(error=>{

            this.message = 'Info: No Records Found with this phone or email';
         })




        }


    }