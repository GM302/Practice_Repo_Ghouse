import { LightningElement,track } from 'lwc';
import acclst from '@salesforce/apex/Allaccounts.acclst'

export default class Combobox extends LightningElement {

    value ='';
    @track accoptions=[];

    get options(){
        return this.accoptions;

    }


    connectedCallback(){

        acclst()
        .then(result => {
             let ac = [];

             for(var i=0;i<result.length;i++){
                ac.push({label: result[i].Name , value: result[i].Id});

             }

            this.accoptions = ac;
        })
    }



    handleChange(event){

        this.value = event.detail.value;

    }


}