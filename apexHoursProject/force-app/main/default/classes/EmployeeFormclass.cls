public class EmployeeFormclass {
    
    public static void insertEmployee(List<Employee__c> e){
        
         for (Employee__c emp : e){
            
            if(emp.Phone_Number__c == null){
                emp.Phone_Number__c ='9999';
                
            }
             if(emp.EmailAddress__c  == null){
                emp.EmailAddress__c  ='noemail@gmail.com';
                
            }
            
        }
        
        
    }
    
     

}