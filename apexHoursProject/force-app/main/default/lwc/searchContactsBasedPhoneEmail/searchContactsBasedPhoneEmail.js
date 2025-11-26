import { LightningElement,wire,track} from 'lwc';
import fetchCons from '@salesforce/apex/FetchContactsInfo.serachContacts';


const columns= [


    {label:'Name' ,fieldName:'Name' , type:'text'},
    {label:'Phone' ,fieldName:'Phone' , type:'phone'},
    {label:'Email' ,fieldName:'Email' , type:'email'}
   
];

export default class SearchContactsBasedPhoneEmail extends LightningElement {

    @track searchPh;
    @track searchEml;
    cols=columns;
    
    error;

   handlePhone(event){

    this.searchPh = event.target.value;
   
   }

   handleEmail(event){

    this.searchEml = event.target.value;

   }
   
        @wire(fetchCons,{serachEmail:'$searchEml',searchPhone:'$searchPh'}) allCons;
     
       
    


    

   

 


}