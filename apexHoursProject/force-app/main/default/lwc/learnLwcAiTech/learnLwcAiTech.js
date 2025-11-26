import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
export default class LearnLwcAiTech extends LightningElement {

    testName="Venu Yadav";

    connectedCallback() {
         console.log("before This handle function "+this.testName)
        window.alert("Hello Connected call back Here  " + this.testName);
         console.log("after This handle function "+this.testName)
    }
    
   handleClick() {
    
       console.log('enter handle');
        const event = new ShowToastEvent({
            title: 'Success Toast',
            message:'My message toast',
            variant:'success',
            mode:'dismissable'
        });
        this.dispatchEvent(event);
         console.log('finish handle')
    }
    handleError() {
        const event = new ShowToastEvent({
            title: 'Error Toast',
            message:'My message toast error',
            variant:'error',
            mode:'dismissable'
        });
        this.dispatchEvent(event);
        
    }
     handleWarning() {
        const event = new ShowToastEvent({
            title: 'warning Toast',
            message:'My message toast warning',
            variant:'warning',
            mode:'dismissable'
        });
        this.dispatchEvent(event);
        
    }

    handleinfo(){
      
      const event = new ShowToastEvent({
          title:'info title',
          message:'info message',
          variant:'info',
          mode:'dismissable'
      })
      this.dispatchEvent(event);

    }
}