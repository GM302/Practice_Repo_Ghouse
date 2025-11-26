import { LightningElement } from 'lwc';

export default class ParentComponent extends LightningElement {

    handleClickParent(){
        this.template.querySelector("c-child-component").handleClick();
    }
}