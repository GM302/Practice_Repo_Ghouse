import { LightningElement } from 'lwc';
export default class ParentOne extends LightningElement {

    parentTitle = 'Hello World';


    handleChnage(){

        this.parentTitle = event.target.value;

    }

}