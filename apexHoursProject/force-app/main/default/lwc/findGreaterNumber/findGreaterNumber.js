import { LightningElement } from 'lwc';
export default class FindGreaterNumber extends LightningElement {
    
    fnum;
    snum;
    tnum;

    handleData(event){

        const data = event.target.name;

        if(data=='f'){
            this.fnum = event.target.value;
        }
         else if(data=='s'){
            this.snum = event.target.value;
        }
        else{
           this.tnum = event.target.value; 
        }

    }

    handleCal(event){

        const a = parseInt(this.fnum);
        const b = parseInt(this.snum);
        const c = parseInt(this.tnum);


        if(a>b && a>c){

            alert('Greater number'+a);
        }
       else if(b>c && b>c){

            alert('Greater number'+b);
        }
        else{

            alert('Greater number'+c);
        }

    }
    handleClear(event){
        this.fnum ='';
        this.snum='';
        this.tnum='';
    }

}