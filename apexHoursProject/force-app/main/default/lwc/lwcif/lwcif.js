import { LightningElement,track } from 'lwc';

export default class Lwcif extends LightningElement {


    @track dynamiclabel = 'Button 3';

    @track property1= false;
    @track property2= false;

    handleClick(){

        if(this.property1 == true){

            this.property1 = false;
            this.property2 = true;
            this.dynamiclabel = 'Button 2'


        }else {

            this.property1 = true;
            this.property2 = false;
            this.dynamiclabel = 'Button 1';


        }



       

    }
}