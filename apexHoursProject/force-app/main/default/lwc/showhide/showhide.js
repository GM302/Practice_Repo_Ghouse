import { LightningElement,track } from 'lwc';

export default class Showhide extends LightningElement {

  @track onclickchangelabel = 'Show';
  myTitle = 'salesforce noob';
  @track showcard = false;

  handleClick(event){

    const lab = event.target.label;
    if(lab === 'Show'){

        this.onclickchangelabel = 'Hide';
        this.showcard = true;

    }
    else if(lab === 'Hide'){
        this.onclickchangelabel = 'Show';
        this.showcard = false;
    }

  }

}