import { LightningElement } from 'lwc';
export default class ParentCmps extends LightningElement {

  parentTitle="hello child here your parent";

    

   handleChange(){
       debugger;
       this.parentTitle = event.target.valu;
        
   }
}