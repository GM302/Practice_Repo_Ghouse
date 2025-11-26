import { LightningElement,api } from 'lwc';

export default class ChildComp extends LightningElement {


    @api itemName = "Salesforce Noob";

    @api valuechange(){

        this.itemName= "changed salesforce noob";
    }
}