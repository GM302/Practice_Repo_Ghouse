import { LightningElement,track } from 'lwc';

export default class Iftrue extends LightningElement {

@track showHideclick ='Show';
itemNmae = 'salesforce noob';
@track cardvisible = false;


handleClick(event){

    const eve = event.target.label;

    if(eve === 'Show'){
        this.showHideclick = 'Hide';
        this.cardvisible = true;
    }else{
        this.showHideclick = 'Show';
        this.cardvisible = false;
    }



}




}