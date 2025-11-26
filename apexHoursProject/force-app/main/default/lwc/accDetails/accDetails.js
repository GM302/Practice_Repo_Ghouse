import { LightningElement } from 'lwc';
import Account_ClsData from '@salesforce/apex/DispAcc.fetchAcc';

export default class AccDetails extends LightningElement {

    phone;
    email;
    message;
    dynamicClass;
    accountsData;

    handleChnage(event){

        const cName = event.target.name;
        const cValue= event.target.value;

        console.log('CName--------'+ cName);
        console.log('cValue--------'+ cValue);

        if(cName=='PHONE'){
               this.phone= cValue;
        }
        else{
              this.email=cValue;

        }
    }

    handleClick(event){

        const isValidate = this.validation();

        console.log('isValidate--------'+ isValidate);

        if(!isValidate){

            this.message='';
           

            Account_ClsData({sPhone:this.phone,sEmail:this.email})
            .then(result=>{


               this.accountsData = result;


            })
            .catch(error=>{

                    

                this.dynamicClass='greyColor'
                this.message = 'INFO: NO records found with this phone or email';

            })
        }


    }

    validation(){

        this.message='';

        if((this.phone==undefined || this.phone == '') && (this.email==undefined || this.email == '')){
            this.dynamicClass='redColor';
            this.message= 'Error: Please Enter Phone or Email';
            return true;
        }
        return false;
    }

}