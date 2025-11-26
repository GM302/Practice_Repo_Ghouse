import { LightningElement,api } from 'lwc';
import { deleteRecord } from 'lightning/uiRecordApi';
import {NavigationMixin} from 'lightning/navigation';
export default class DeleteAccount extends LightningElement {

    @api recordId;

    handleDelete(event){
        console.log('eneter')

        deleteRecord(this.recordId).then(result=>{
          this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                ObjectApiName:'Contact',
                actionName: 'list'
            },
            state:{
                filterName:'Recent'

            },
        });
        })
        .catch(error=>{
             alert('delted error'+ error.body.message);
        });

       

    }

}