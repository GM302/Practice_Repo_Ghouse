public class EvenOdd {
    
    //1+3+5+7+9=25
    //2+4+6+8=20
    
    public void myMethod(){
        
        Integer num = 10;
        Integer count;
        Integer result=0;
        
        string choice ='Even';
        
        if(choice=='Even'){
            
            count=0;
            
            while(count<num){
                result = result+count;
                count+=2;  
            }
            system.debug(result);
        }
        
        if(choice=='Odd'){
            
            count=1;
            
            while(count<num){
                result = result+count;
                count+=2;  
            }
            system.debug(result);
            
        }
        
        
    }
    
    
    
}