import { LightningElement } from 'lwc';

export default class WatchBrand extends LightningElement {

   myWatchname = 'beatxp';
    
    connectedCallback(){
       
       
        var x = 10;
       // console.log(typeof x);
        var y = 10n;
        console.log(typeof y);
     
    }


   
    
}