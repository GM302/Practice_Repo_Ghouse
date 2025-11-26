import { LightningElement,wire,track } from 'lwc';
import getAccounts from '@salesforce/apex/wireCls.getAccounts';

export default class WireCmp extends LightningElement {

    @track accountsList = [];
    
    @track columns=[

        {label:'Account Name', fieldName:'Name'},
         {label:'Account Phone', fieldName:'Phone'}
    ];

    @wire(getAccounts)accountss({data,error}){
        if(data){
            this.accountsList =data;

            console.log('data----',JSON.stringify(data));
            console.log('obj------',JSON.parse(JSON.stringify(data)));

        }else if(error){
               console.log('error----',JSON.stringify(error));
        }
    }

  
  

}