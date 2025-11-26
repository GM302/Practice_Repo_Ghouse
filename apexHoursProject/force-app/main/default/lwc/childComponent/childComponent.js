import { LightningElement, api } from 'lwc';

export default class ChildComponent extends LightningElement {
   @api myTitle ="mychildcomponent";

  @api handleClick(){
     this.myTitle="chnaged button clicks";
   }


}