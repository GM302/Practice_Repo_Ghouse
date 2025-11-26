import { LightningElement } from 'lwc';
export default class Z2_findGnum extends LightningElement {

    fnum;
    snum;
    tnum;

    handleChange(event){

     var input = this.template.querySelectorAll('lightning-input');

     input.forEach(function(element){
         if(element.name=='f1'){
            this.fnum = element.value;
         }
         else if(element.name == 's1'){
            this.snum = element.value;
         }
         else if(element.name == 't1') {
            this.tnum = element.value;
     }

         },this);
    
     
}   
       
    

    handleClcik(event){

        const a = parseInt(this.fnum);
        const b = parseInt(this.snum);
        const c = parseInt(this.tnum);

        if(a>b && a>c){
            alert('a is Grater'+a);
        }
       else if(b>a && b>c){
            alert('b is Grater'+b);
        }
        else if(c>a && c>b){
            alert('c is Grater'+c);
        }


    }
    handleReset(event){

        this.fnum='';
        this.snum='';
        this.tnum='';
    }

   

    

}