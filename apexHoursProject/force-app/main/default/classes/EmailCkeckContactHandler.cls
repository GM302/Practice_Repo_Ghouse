public class EmailCkeckContactHandler {
    
    public static void emailCheckMethod(List<Contact> NewRec, List<Contact> OldRec){
        
        for(Contact conNewRec : NewRec){
            
            for(Contact conOldRec : OldRec ){
                
                if(conNewRec.id == conOldRec.id){
                    
                    if(conNewRec.Email != conOldRec.Email){
                        
                        conNewRec.Email.adderror('Hey you dont change email. Revert to original email');
                    }
                }
            }
            
        }
        
    }
    
    public static void dupContactError (List <Contact> newTrigCon) {

//List of all Contact Records currently in the database    
List <Contact> allCon = [SELECT ID, Name, phone , email  FROM Contact];

//Iterate through new potential records
for (Contact oneConTrig : newTrigCon) {

//Needed to iterate through all existing records which is contained in the allCon List
for (Integer i = 0; i < allCon.size(); i++){

//If all conditions are met, there is a duplicate and thus, returns an error.
if (oneContrig.email == allCon[i].email 
&& oneContrig.phone == allCon[i].phone) {

oneConTrig.addError('Duplicate Contact Error! This record already exists.');

}
}


}      
}
   
}