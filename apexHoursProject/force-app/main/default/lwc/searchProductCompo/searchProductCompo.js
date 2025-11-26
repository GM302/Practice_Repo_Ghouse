import { LightningElement,track } from 'lwc';
import serProd from '@salesforce/apex/searchProductCls.searchProdMethod';

const columns = [
   { label: 'Product Name', fieldName: 'Name' },
   { label: 'Product Code', fieldName: 'ProductCode' }
  
];

export default class SearchProductCompo extends LightningElement {

@track strSerchproduct;
@track serchData;
@track columns=columns;
@track showData = false;


   handlechnage(event){
      
      this.strSerchproduct = event.target.value;
      serProd({strSearchProd:this.strSerchproduct})
      .then(result=>{
         this.serchData = result;
         if(result.length > 0){
            this.showData = true;
         }else{
            this.showData = false;
           // this.serchData = [];
            console.log('empty');
         }
         console.log('Search Data' , this.serchData);
      }).catch(error=>{
         console.log(error);
      })

      
      
   }
   handleSearch(){
      
   }

}