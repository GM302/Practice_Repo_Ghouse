import { LightningElement, track } from 'lwc';

export default class SimpleInterestCalculator extends LightningElement {
    @track principal = 0;
    @track rate = 0;
    @track time = 0;
    @track simpleInterest = 0;
    @track compountinterest=0;


    handleprince(event){

        const pp = event.target.value;

        if(pp=="pval"){
            this.principal = event.target.value;

        }
       else if(pp=="rval"){
            this.rate = event.target.value;

        }
        else{
            this.time = event.target.value;

        }

       
    }

   
    calculateSimpleInterest(event){
        console.log(this.principal);
        console.log(this.rate);
        console.log(this.time);

        const p = parseInt(this.principal);
        const r = parseInt(this.rate);
        const t = parseInt(this.time);


          this.simpleInterest = (p*r*t)/100;

    }

}