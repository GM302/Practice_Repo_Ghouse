import { LightningElement } from 'lwc';

export default class Swpana_Secondcmp_GreaterNumber extends LightningElement {

     
     fNumberLocal;
     sNumberLocal;
     tNumberLocal;

     handleChnage(event){

         const cmp = this.template.querySelectorAll("lightning-input");

         cmp.forEach(function(element){

            if(element.name=='f1'){

                this.fNumberLocal = element.value;
                
            }
          else  if(element.name=='s1'){

                this.sNumberLocal = element.value;
                
            }
            else {

                this.tNumberLocal = element.value;
                
            }






         },this); 

         

       
     }

     handleClick(event){

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

    //  handleClear(event){

    //      this.fNumberLocal ='';
    //      this.sNumberLocal ='';
    //      this.tNumberLocal = '';

    //  }

   
}