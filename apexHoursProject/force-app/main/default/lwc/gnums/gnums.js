import { LightningElement } from 'lwc';
export default class Gnums extends LightningElement {

    fname;
    sname;
    tname;






    handleChane(event){

        const input = event.target.name;

        if(input=='f1'){
            this.fname= event.target.value;
        }
        
       else if(input=='s1'){
            this.sname= event.target.value;
        }
         else{
            this.tname= event.target.value;
        }

    }
     handleClick(event){


        const f = parseInt(this.fname);
        console.log(f);
        const s = parseInt(this.sname);
        console.log(s);
        const t = parseInt(this.tname);
        console.log(t);

        if(f>s && f>t){
            alert('Gnum'+f);
        }
         else if(s>f && s>t){
            alert('Gnum'+s);
        }
         else {
            alert('Gnum'+t);
        }

        
    }

    handleClear(event){

        this.fname='';
        this.sname='';
        this.tname='';


    }









    // ----------------------------Using below also working fine------------------------

    // handleChane(event){

    //     const inputs = this.template.querySelectorAll("lightning-input");

    //     inputs.forEach(function(element){

    //         if(element.name=='f1'){
    //             this.fname=element.value;
    //             console.log(this.fname);
    //         }
    //          else if(element.name=='s1'){
    //             this.sname=element.value;
    //              console.log(this.sname);
    //         }
            
    //          else{
    //             this.tname=element.value;
    //              console.log(this.tname);
    //         }
    //     },this)
    // }

    // handleClick(event){


    //     const f = parseInt(this.fname);
    //     console.log(f);
    //     const s = parseInt(this.sname);
    //     console.log(s);
    //     const t = parseInt(this.tname);
    //     console.log(t);

    //     if(f>s && f>t){
    //         alert('Gnum'+f);
    //     }
    //      else if(s>f && s>t){
    //         alert('Gnum'+s);
    //     }
    //      else {
    //         alert('Gnum'+t);
    //     }

        
    // }

}