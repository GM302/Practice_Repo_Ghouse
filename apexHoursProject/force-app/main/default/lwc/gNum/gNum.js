import { LightningElement } from 'lwc';
export default class GNum extends LightningElement {

     principalamt;
     rating;
     timing;
     result;


     handleChange(event){

          console.log('enter');

        const cmp = event.target.name;

        console.log('cmp'+cmp);

        if(cmp=="p1"){
            this.principalamt=event.target.value;
            console.log('this.principalamt'+this.principalamt);
        }
         else if(cmp=="r1"){
            this.rating=event.target.value;
            console.log('this.rating'+this.rating);
        }
        else{
             this.timing=event.target.value;
              console.log('this.timing'+this.timing);
        }
     }

     handleClick(event){

        this.result=((this.principalamt*this.rating*this.timing)/100)

         console.log('this.result'+this.result);

         alert('result'+  this.result);

     console.log('close');


     }

     handleClear(event){

        console.log('Enter clear');

        this.principalamt='';
        this.rating='';
        this.timing='';
      console.log('close');

     }


    }