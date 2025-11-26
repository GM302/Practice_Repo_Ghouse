import { LightningElement } from 'lwc';
export default class SmallerNum extends LightningElement {

    fNum;
    sNum;
    tNum;


    handleChangeData(event){

        const cmp = event.target.name;

        if(cmp=="f1"){
          this.fNum = event.target.value;
        }
          else if(cmp=="s1"){
          this.sNum = event.target.value;
        }
         else{
          this.tNum = event.target.value;
        }   
    }

    handleCalulate(event){

        const f = parseInt(this.fNum);
        const s = parseInt(this.sNum);
        const t = parseInt(this.tNum);

        if(f<s && f<t){
            alert('Smaller Number'+f);
        }
        
        else if(s<f && s<t){
            alert('Smaller Number'+s);
        }
          else{
            alert('Smaller Number'+t);
        }


    }

    handleClear(event){

        this.fNum= '';
        this.sNum='';
        this.tNum='';

    }


}