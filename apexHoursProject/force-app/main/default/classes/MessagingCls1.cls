public class MessagingCls1 {
    
    public void sendEmail(){
        
        
        
        messaging.SingleEmailMessage m1 = new messaging.SingleEmailMessage();
        
        list<string> toadd = new list<string>{'ghouse213@gmail.com'};
            list<string> bb= new list<string>{'sfdcghouse143@gmail.com'};
                string n = 'helloo ghouse';
        
        m1.setToAddresses(toadd);
        m1.setBccAddresses(bb);
        m1.setSubject('Goodmornig');
        m1.setplaintextbody(n);
        
        List<messaging.Email> sm = new List<messaging.Email>{m1};
            
            messaging.sendEmail(sm);
        
    }

}