import { LightningElement,api } from 'lwc';
import Page1 from './templateOne.html';
import Page2 from './templateTwo.html';

export default class ThreeHtml extends LightningElement {

@api Page = 'templateOne';

constructor(){
    super();
}

    handleButton(event){

        if(this.Page=='templateOne'){
            this.Page = 'templateTwo';
        }else{
           this.Page = 'templateOne'; 
        }
    }
    render(){
        if(this.Page == 'templateOne'){
            return Page1;

        }else{
            return Page2;
        }
    }

}