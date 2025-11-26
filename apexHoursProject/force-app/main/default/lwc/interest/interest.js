import { LightningElement } from 'lwc';
export default class Interest extends LightningElement {

     principal;
     rate;
     time;
     result;

    handleChangeData(event){

        const cmp = event.target.name;

        if(cmp=='price'){

            this.principal = event.target.value;

        }
        else if(cmp=='rate'){
             this.rate = event.target.value;


        }
        else if(cmp=='time'){
             this.time = event.target.value;


        }
    }

    handleClick(event){

        const p = parseInt(This.principal);
        const r = parseInt(This.rate);
        const t = parseInt(This.time);

       this.result = parseFloat((p*r*t)/100);

       alert('Interest is : '+ this.result);

    }
   handleClear(event){

       this.principal='';
       this.rate='';
       this.time='';

   }

}