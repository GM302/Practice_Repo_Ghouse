import { LightningElement } from 'lwc';

export default class Buttoncmp extends LightningElement {

    myTitle = "Salesforce Noob";

    handleClick(){
        window.alert(" call me button  ");
    }
}