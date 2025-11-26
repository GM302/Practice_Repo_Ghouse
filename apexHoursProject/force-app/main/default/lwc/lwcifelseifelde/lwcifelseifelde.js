import { LightningElement ,track } from 'lwc';

export default class Lwcifelseifelde extends LightningElement {

    @track labeldyn = 'Button 3';

   @track property1 = false;
   @track property2 = false;



   handleClick(){

    if(this.property1 == true){

        this.property1 =false;
        this.property2=true;
        this.labeldyn = 'Button 2';
    }else {

        this.property1 =true;
        this.labeldyn = 'Button 1';

    }

   

   }
}