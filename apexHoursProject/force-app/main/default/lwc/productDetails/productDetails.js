import { LightningElement,api } from 'lwc';
import Product_Name from '@salesforce/schema/Product2.Name';
import Product_Code from '@salesforce/schema/Product2.ProductCode';
import Product_Family from '@salesforce/schema/Product2.Family';
import Product_Active from '@salesforce/schema/Product2.IsActive';
import Product_Decription from '@salesforce/schema/Product2.Description';


export default class ProductDetails extends LightningElement {

    @api recordId;
    

    fields=[Product_Name,Product_Code,Product_Family,Product_Active,Product_Decription];


}