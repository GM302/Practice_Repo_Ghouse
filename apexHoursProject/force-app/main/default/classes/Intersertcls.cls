public class Intersertcls {
    
    public Decimal amt  {get;set;}
    public Decimal times {get;set;}
    public Decimal rateIn{get;set;}
    public Decimal result {get;set;}
    
    public void calMethod(){
        
        result= (amt*times*rateIn)/100;
    }

}