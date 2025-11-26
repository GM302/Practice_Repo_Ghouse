public class searchProductCls {
    @AuraEnabled(Cacheable = true)
    public static List<product2> searchProdMethod(string strSearchProd){
        
        strSearchProd = '%'+strSearchProd+'%';
        List<product2> lstProds = [select id,name,productcode from product2 where name like :strSearchProd];
        
        return lstProds;
    }

}