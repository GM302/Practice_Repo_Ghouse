import { LightningElement,api } from 'lwc';
import page1 from './templateone.html';
import page2 from './templatetwo.html';

export default class Threecmps extends LightningElement {

@api page = 'templateone';


    handleChangeTemp(event){

        if(this.page=='templateone'){
            this.page = 'templatetwo';
        }else{
           this.page = 'templateone'; 
        }



    }
    render(){
        if(this.page == 'templateone'){
            return page1;

        }else{
            return page2;
        }
    }

}