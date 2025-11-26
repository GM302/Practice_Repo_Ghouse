public class consCls {

    @AuraEnabled(cacheable=true)

    public static List<contact> getConList(){

          List<Contact> conList = [select id,lastname,email from contact];

          return conList;




    }

}