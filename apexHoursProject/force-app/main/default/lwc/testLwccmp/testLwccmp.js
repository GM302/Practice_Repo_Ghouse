import { LightningElement } from 'lwc';

export default class TestLwccmp extends LightningElement {

    myTitle ="Fouziya";

    connectedCallback(){

        var nm ="helloo";
        window.alert(nm);
    }
}