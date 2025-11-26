import { LightningElement } from 'lwc';
import {createRecord} from 'lightning/uiRecordApi';
import {ShowToastEvent} from 'lightning/platformShowToastEvent'
export default class AccountRecordCreation extends LightningElement {


    accname;
    accphone;
    accfax;
    accindustry;
    accrating;
    

    handleChange(event){

        const inputs = this.template.querySelectorAll("lightning-input");

        console.log('inputs----'+inputs);

        inputs.forEach(function(element){

            if(element.name =='nam'){
                this.accname = element.value;
                 console.log('name----'+this.accname);
            }
             else if(element.name =='phn'){
                this.accphone = element.value;
                console.log('ph----'+this.accphone);
            }
              else if(element.name =='fx'){
                this.accfax = element.value;
                console.log('fx----'+this.accfax);
            }
              else if(element.name =='ind'){
                this.accindustry = element.value;
                console.log('accindustry----'+this.accindustry);
            }
              else if(element.name =='rat'){
                this.accrating = element.value;
                console.log('accrating----'+this.accrating);
            }

        },this);



    }

    handleClick(){

        const fields = {'Name':this.accname,'Phone':this.accphone,'Fax':this.accfax,'Industry':this.accindustry,'Rating':this.accrating};

        console.log('fields----'+fields);

        const recordData = {apiName:'Account',fields};

        console.log('recordData----'+recordData);

        createRecord(recordData).then(result=>{
            alert('Record Created successly :'+result.id);
            
        }).catch(error=>{
             alert('Record failed successly'+error.body.message);
            
        });

      

    }

}