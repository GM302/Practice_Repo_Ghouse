public class ScheduleConatctupdate implements schedulable {
    
    //quey contacts and update email 
    
    
    Public void execute(Schedulablecontext SC){
        
    List<Contact> cons = new List<Contact>();
    List<Contact> conlst = [SELECT Id, LastName, Email FROM Contact where email !=null and name like '%g%'];
    
    for (Contact c : conlst){
        c.email = 'sfdcdev213@gmail.com';
        cons.add(c);
    }
    if(cons.size()>0){
        update cons;
    }
        
        sendMassEmai();
        
    }
    
     void sendMassEmai(){
        
        List<contact> updatedConlst = [select id,lastname,email from contact where email ='sfdcdev213@gmail.com'];
        
        Emailtemplate ET = [select id from Emailtemplate where name = 'GhouseSendMassEmailTemp'];
        
        List<id> ids = new List<id>();
        for (contact c : updatedConlst){
            ids.add(c.id);          
        }
        
        messaging.MassEmailMessage ME = new messaging.MassEmailMessage();
        	ME.setTargetObjectIds(ids);
            ME.setTemplateId(ET.id);
        
        list<messaging.Email> emils = new list<messaging.Email> {ME};
        messaging.sendEmail(emils);
    }

}