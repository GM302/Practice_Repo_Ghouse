import { LightningElement } from 'lwc';
export default class FirstNameDisplay extends LightningElement {



    name='Ghouse'

    handleClick(event){

        this.name='Hey Mohiddin button clicked'
         console.log(this.name);

    }

    handleChange(event){

        this.name=event.target.value;
        console.log(this.name);
    }

}