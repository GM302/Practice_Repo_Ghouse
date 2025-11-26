import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi';
import Acc_Name from '@salesforce/schema/Account.Name';
import Acc_Phone from '@salesforce/schema/Account.Phone';
import Acc_Rating from '@salesforce/schema/Account.Rating';
import Acc_Industry from '@salesforce/schema/Account.Industry';

export default class AccountCreationui extends LightningElement {


   name;
   phone;
   rating;
   industry;

    nameChane(event){

        this.name=event.target.value;

    }
     phoneChane(event){

        this.phone=event.target.value;

    }
     ratingChane(event){

        this.rating=event.target.value;

    }
     industryChane(event){

        this.industry=event.target.value;

    }

    handleClick(event){

        this.dispatchEvent(new CustomEvent('dispalyacc'));


         const fields = {};

        fields[Acc_Name.fieldApiName] = this.name;
        fields[Acc_Phone.fieldApiName] = this.phone;
        fields[Acc_Rating.fieldApiName] = this.rating;
        fields[Acc_Industry.fieldApiName] = this.industry;


      const recorddata ={apiName:'Account',fields};



        createRecord(recorddata).then(res=>{
        
                // Dispatch event with record details
                const createEvent = new CustomEvent('accountcreated', {
                    detail: {
                        id: res.id,
                        Name: this.name,
                        Phone: this.phone,
                        Rating: this.rating,
                        Industry: this.industry
                    }
                });
                this.dispatchEvent(createEvent);
        }).catch(error=>{

            alert('error');
        });
    }

}