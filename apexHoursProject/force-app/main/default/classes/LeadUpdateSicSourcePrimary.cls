public class LeadUpdateSicSourcePrimary {
    
    public static void updateLeads(List<Lead> leadList){
        for(Lead lds : leadList){
            if(lds.Industry == 'Healthcare'){
                lds.LeadSource = 'Purchased List';
                lds.SICCode__c ='1100';
                lds.Primary__c = 'Yes';
            }
        }
    }

}