import { LightningElement } from 'lwc';
export default class ChildLwcCmp extends LightningElement {

    name;
    phone;
    city;

   handleName(event){

    this.name = event.target.value;

   }
   handlePhone(event){

    this.phone= event.target.value;

   }
   handleCity(event){
    this.city = event.target.value;

   }

   handleClick(event){

    this.dispatchEvent(new CustomEvent('submit',{detail:{enm:this.name,epn:this.phone,ecity:this.city},bubbles:true,composed:true}));
   }
//    handleClick(event){

//     this.dispatchEvent(new CustomEvent('submit',{detail:{enm:this.name,epn:this.phone,ecity:this.city},bubbles:true,composed:true}));
//    }



}