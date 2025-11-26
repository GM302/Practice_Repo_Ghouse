import { LightningElement,track,wire} from 'lwc';
import {getRecord} from 'lightning/uiRecordApi';
export default class GetRecordContactCmp extends LightningElement {

@track contactRec;







@wire(getRecord,{
    recordId:'003J3000004YpwHIAS',
    layoutTypes:['Full']
})
contactRec;



get name(){
   

    console.log('enter name----->',name);

    var name = this.contactRec.data.fields.FirstName.value+' '+this.contactRec.data.fields.LastName.value;
    return name;
}

 get phone(){
    console.log('enter phone----->',phone);

    var phone =this.contactRec.data.fields.Phone.value;

   return phone;
}

 get email(){

 console.log('enter email----->',email);

     var email =this.contactRec.data.fields.Email.value;


  return email;

 }


get department(){
    console.log('enter department----->',department);

    var department = this.contactRec.data.fields.Department.value;

    return department;
}



}