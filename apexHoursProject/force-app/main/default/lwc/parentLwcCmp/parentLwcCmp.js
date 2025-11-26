import { LightningElement } from 'lwc';
export default class ParentLwcCmp extends LightningElement {


    parentEmpName;
    ParentEmpPhone;
    ParentEmpCity;
    constructor() {

      super();
        
        this.template.addEventListener('submit', this.handleMe.bind(this));
    }

   handleMe(event){


      this.parentEmpName = event.detail.enm;
       this.ParentEmpPhone = event.detail.epn;
        this.ParentEmpCity = event.detail.ecity;

   }



}