import { LightningElement } from 'lwc';
export default class FirstNameLwcCmp extends LightningElement {

    firstname='Ghouse';


    handleChange(event){
        this.firstname=event.target.value;
    }

}