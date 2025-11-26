import { LightningElement } from 'lwc';
export default class SimpleInterest extends LightningElement {

    princpleAmount;
    rateOfInterest;
    timeofInterest;

    Interest;

    handleAmount(event){
      
      this.princpleAmount = event.target.value;

    }
    handleRating(event){
     
       this.rateOfInterest = event.target.value;

    }
    handleTime(event){

        this.timeofInterest = event.target.value;

    }

    handleClick(event){
     
       this.Interest = ((this.princpleAmount*this.rateOfInterest*this.timeofInterest)/100);
    //    alert('Interest'+this.Interest)

    }
    handleClear(event){

        this.princpleAmount='';
        this.rateOfInterest='';
        this.timeofInterest='';
    }

}