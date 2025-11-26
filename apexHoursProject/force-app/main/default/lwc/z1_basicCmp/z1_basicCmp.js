import { LightningElement } from 'lwc';
export default class Z1_basicCmp extends LightningElement {

    disJavaScriptName='Ghouse Mohiddin';
     

    handleClick(event){

        alert('Called handle click method/function');

        this.disJavaScriptName='Hello Update from java script';

        console.log(this.disJavaScriptName)

    }
    handleChange(event){
        this.disJavaScriptName = event.target.value;
    }



}