import { LightningElement,api } from 'lwc';
import Opportunity_Obj from '@salesforce/schema/Opportunity';
import Opp_Name from '@salesforce/schema/Opportunity.Name';
import Opp_Stage from '@salesforce/schema/Opportunity.StageName';
import Opp_Amount from '@salesforce/schema/Opportunity.Amount';
import Opp_Closedate from '@salesforce/schema/Opportunity.CloseDate';
import Opp_AccountId from '@salesforce/schema/Opportunity.Accountid';
export default class ButtonOppCmps extends LightningElement {

   @api recordId;
   isModel = false;

   oppobj = Opportunity_Obj;
   oppname = Opp_Name;
   oppstage = Opp_Stage;
   oppamount = Opp_Amount;
   oppclosedate =Opp_Closedate;
   oppaccid = Opp_AccountId;

    handleClick(event){

       

        
            this.oppname = event.target.value;
            this.oppstage = event.target.value;
            this.oppamount = event.target.value;
            this.oppclosedate = event.target.value;
            this.oppaccid = event.target.value;
        

    }

}