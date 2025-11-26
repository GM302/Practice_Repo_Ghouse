import { LightningElement,track} from 'lwc';

export default class Calculategreaternumber extends LightningElement {


 @track Num1;
 @track Num2;
 @track Num3;


 dume(event){

    const wh = event.target.name;


    if(wh == 'p'){
        this.Num1 = event.target.value;


    }
    else if(wh == 'q'){
        this.Num2 = event.target.value;


    }
    else{
        this.Num3 = event.target.value;


    }

 }

 
  calculteme(event){

    const a  = parseInt(this.Num1);
    const b  = parseInt(this.Num2);
    const c =  parseInt(this.Num3);

    if(a>b && b>c){
        alert('this greater num'+a);
    }
    else if(b>c &&  b>a){
        alert('this greater num'+b);
    }
    else {
        alert('this greater num'+c); 
    }

  }
  clearme(event){

    this.Num1= '';
    this.Num2= '';
    this.Num3= '';

  }



}