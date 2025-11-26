import { LightningElement,track } from 'lwc';

export default class Buttonshowif extends LightningElement {

@track buttonlable = 'Show';
@track cardvisible = false;


iteamTitle = 'hellow world';


handleClick(event){

    const lbe = event.target.label;
    if(lbe === 'Show'){
        this.buttonlable = 'Hide';
        this.cardvisible = true;
    }else if(lbe === 'Hide'){
        this.buttonlable = 'Show';
        this.cardvisible = false;
    }



    
}

}