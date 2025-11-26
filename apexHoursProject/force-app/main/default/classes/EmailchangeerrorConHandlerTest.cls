@istest
public class EmailchangeerrorConHandlerTest {
    
    public static testmethod void mytest(){
        list<contact> conlst = new list<contact>();
        contact c = new contact();
        c.lastname ='ghoyuse';
        c.email ='ghouse@gmail.com';
        insert c;
        
        c=[select lastname,email from contact where id =:c.Id];
        
       // for(contact cc : c){
           c.email='yahoo@gmail.com';
           conlst.add(c); 
       // }
        update conlst;
        
        
    }
    

}