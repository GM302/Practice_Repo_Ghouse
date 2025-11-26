import { LightningElement,api } from 'lwc';
import Opp_Obj from '@salesforce/schema/Opportunity';
import Opp_Name from '@salesforce/schema/Opportunity.Name';
import Opp_Stage from '@salesforce/schema/Opportunity.StageName';
import Opp_Amount from '@salesforce/schema/Opportunity.Amount';


export default class WithoutWireOppCmp extends LightningElement {


    @api recordId;
    opportunity = Opp_Obj;
    oppname = Opp_Name;
    oppstage=Opp_Stage;
    oppamount=Opp_Amount;
   
    
}