public class PageclsSendEmail {
    
    
    public string toAdd {get;set;}
      public string sub {get;set;}
      public string playbody {get;set;}
    
    public void sendEmail(){
        
        messaging.SingleEmailMessage m1 = new messaging.SingleEmailMessage();
        
        List<string> toemails = new List<string>{toAdd};
            
        m1.setToAddresses(toemails);
        m1.setSubject(sub);
        m1.setPlainTextBody(playbody);
        
        List<messaging.Email> se= new List<messaging.Email>{m1};
        messaging.sendEmail(se);
           
    }

}