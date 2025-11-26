import { LightningElement } from 'lwc';
export default class NameCmp extends LightningElement {

    name='Ghouse';

    student=[


        {Name:'Ghouse',age:23,phone:1234567890},
        {Name:'Ghouse',age:23,phone:1234567890},
        {Name:'Ghouse',age:23,phone:1234567890}
    ];

    handleChange(event){

        this.name = event.target.value;

    }

}