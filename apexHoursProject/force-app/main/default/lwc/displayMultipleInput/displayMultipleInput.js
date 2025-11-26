import { LightningElement } from 'lwc';
export default class DisplayMultipleInput extends LightningElement {

    myname;
    myphone;
    myemail;

    handleClick(event){

        console.log('eneter click');

        var ev =this.template.querySelectorAll("lightning-input");
        console.log('input '+ev);

          ev.forEach(function(element){

            if(element.name=='nam'){
                this.myname=element.value;
                 console.log('this.myname '+this.myname);
            }
            else if(element.name=='phn'){
                this.myphone=element.value;
                console.log('this.myphone '+this.myphone);

            }
            else if (element.name=='eml'){
               this.myemail=element.value; 
               console.log('this.myemail '+this.myemail);

            }
          },this);


      

    }

}