import { LightningElement } from 'lwc';
export default class CalculateLargeNumber extends LightningElement {

    fnum;
    snum;
    tnum;


    handleDataChange(event){

        const cmp = event.target.name;
        if(cmp=="f1"){

             this.fnum=event.target.value;

        }


       

    }
    handleDataChange(event){
       const cm = event.target.name;

       if(cm=="s1"){
        this.snum=event.target.value;
       }

      
    }
    handleDataChange(event){

         const m = event.target.name;

       if(m=="t1"){
        this.tnum=event.target.value;
       }


    }

    handleCalculate(event){

        const f = parseInt(this.fnum);
        const s = parseInt(this.snum);
        const t = parseInt(this.tnum);

        if(f>s && f>t){
            alert('The Greater Number is '+f);
        }
        else if(s>f && s>t){
            alert('The Greater Number is '+s);
        }
        else{
            alert('The Greater Number is '+t);
        }
    }

    handleClear(event){

        this.fnum = '';
        this.snum = '';
        this.tnum = '';
    }

}