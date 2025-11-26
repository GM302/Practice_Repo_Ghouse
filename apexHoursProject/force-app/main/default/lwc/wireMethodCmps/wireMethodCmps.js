import { LightningElement,wire,track} from 'lwc';
import fetchAccounts from '@salesforce/apex/Accounteth.fetchAccounts';

export default class WireMethodCmps extends LightningElement {

    @track accountsList;
    @track columns=[
        {label:'Account Name',fieldName:'Name'},
        {label:'Account phone',fieldName:'Phone'},
        {label:'Account Rating',fieldName:'Rating'},

    ];

    @wire(fetchAccounts)accounts({data,error}){
        if(data){
            this.accountsList=data;
            console.log(data);
        }else if(error){
             console.log(error);
        }

    }

}