import { LightningElement } from 'lwc';
import temp1 from './temp1.html';
import temp2 from './temp2.html';

export default class MultipleTemplates extends LightningElement {

    tempone = true;

    render(){
       return this.tempone ? temp1 : temp2
    }

    switchHandleClick(event){

       this.tempone = this.tempone == true ? false : true;

    }

}