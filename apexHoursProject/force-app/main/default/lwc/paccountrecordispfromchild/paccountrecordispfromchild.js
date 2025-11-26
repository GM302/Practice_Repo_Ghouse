import { LightningElement } from 'lwc';

const colm =[
    {label:'Account Name',fieldName:'Name',type:'text'},
    {label:'Account Phone',fieldName:'Phone',type:'phone'},
    {label:'Account Rating',fieldName:'Rating',type:'text'},
    {label:'Account Industry',fieldName:'Industry',type:'text'},
];


export default class Paccountrecordispfromchild extends LightningElement {


    cols=colm;
    recorddats=[];

    handleDis(event){

        const rec=  event.detail;

        this.recorddats= [...this.recorddats,rec];



    }

}