public class InsertConAccCheckTrue {
    
    public static void Insertcontact(List<Account> accList){
         List<contact> conList = new List<contact>();
        
        for(Account acc : accList){
            
            if(acc.myCheckbox__c == true){
                contact con = new contact();
                con.LastName = acc.name;
                con.phone=acc.phone;
                con.AccountId =acc.id;
                conList.add(con);
            }
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        
    }

}