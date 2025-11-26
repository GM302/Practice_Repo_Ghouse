public class GrNumberClass {
    
    public Integer num1 {get;set;}
    public Integer num2 {get;set;}
    public Integer num3 {get;set;}
     public Integer result {get;set;}
    public string choice {get;set;}
    
    
    public void myMethod(){
        
        if(choice=='Grt'){
            greaterNumMethod();
        }
        else if(choice == 'Sml'){
             smallerNumMethod();
        }
        else{
            result =0;
        }
       
        
    }
    
     
          void greaterNumMethod(){
            
        
        if(num1>num2 && num1>num3){
            result=num1;
        }
         if(num2>num1 && num2>num3){
            result=num2;
        }
          if(num3>num1 && num3>num2){
            result=num3;
        }
        system.debug(result);
    }
    
     void smallerNumMethod(){
            
        
        if(num1<num2 && num1<num3){
            result=num1;
        }
         if(num2<num1 && num2<num3){
            result=num2;
        }
          if(num3<num1 && num3<num2){
            result=num3;
        }
        system.debug(result); 
    }

        
         
    
   
}