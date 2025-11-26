import { LightningElement } from 'lwc';
export default class CCmp extends LightningElement {

    


    handleChnage(event){

      const text = event.target.value;

      const textchangec = new CustomEvent('textchange',{detail:{text}});
      this.dispatchEvent(textchangec);
    }

    

}