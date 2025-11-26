import { LightningElement,wire,track } from 'lwc';
import getOpty from '@salesforce/apex/optyCls.getOpty';

const columns=[

    {label:"Opp Name", fieldName:"Name"},
    {label:"Opp stagename", fieldName:"StageName"},
    {label:"Opp CloseDate", fieldName:"Closedate"},
     {label:"Opp Amount", fieldName:"Amount"}
];

export default class ForEachCmp extends LightningElement {

    @track oppList = [];
    @track columns = columns;

    @wire(getOpty)opportunities({data,error}){
        if(data){
            this.oppList = data;
         console.log(JSON.stringify(data));
        }else if(error){
            console.log(error);
        }
    }



}