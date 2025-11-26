import { LightningElement } from 'lwc';
export default class HightestNum extends LightningElement {
     
     fNumberLocal;
     sNumberLocal;
     tNumberLocal;

     handlechnageData(event){

         const cmp = event.target.name;

         if(cmp=="f1"){
            this.fNumberLocal = event.target.value;

         }
          else if(cmp=="s1"){
            this.sNumberLocal = event.target.value;
            
         }
         else{
             this.tNumberLocal = event.target.value;
         }
     }

     handleCalculate(event){

        const f = parseInt(this.fNumberLocal);
        const s = parseInt(this.sNumberLocal);
        const t = parseInt(this.tNumberLocal);

        if(f>s && f>t){
            alert('Greater num ' +f);
        }
         else if(s>f && s>t){
            alert('Greater num ' +s);
        }
          else {
            alert('Greater num ' +t);
        }
     }

     handleClear(event){

         this.fNumberLocal ='';
         this.sNumberLocal ='';
         this.tNumberLocal = '';

     }

   
}