import { LightningElement } from 'lwc';

export default class Parentcmp extends LightningElement {



    handleClick(){

        this.template.querySelector("c-child-comp").valuechange();
    }
}