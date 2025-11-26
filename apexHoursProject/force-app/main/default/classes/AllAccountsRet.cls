public class AllAccountsRet {
    @auraenabled
    public static list<Account> getallAcc(string sarchtext){
        
        string query = 'select id,name,phone,fax from account where name like\'%'+sarchtext+'%\'';
        List<Account> accounts = Database.query(query);
        return accounts;
    }

}