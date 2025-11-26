import { LightningElement } from 'lwc';
export default class DisplayAllFields extends LightningElement {

    name;
    email;
    phone;

    handleClick(event){

        var input = this.template.querySelectorAll("lightning-input");

        input.forEach(function(element){

            if(element.name == 'nam'){
                this.name = element.value;
            }
            
           else if(element.name == 'ema'){
                this.email = element.value;
            }
            else{
               this.phone = element.value; 
            }
        },this);

    }
    handleClear(event){

         this.name='';
         this.email='';
          this.phone ='';


    }

}