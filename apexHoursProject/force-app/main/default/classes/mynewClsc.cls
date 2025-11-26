public class mynewClsc {

    // Method to create an account and return the Id
    public static Id createAccount(String name, String phone) {
        Account acc = new Account(
            Name = name,
            Phone = phone
        );
        insert acc;
        return acc.Id;
    }

    // Method to update the phone number of an account
    public static void updatePhone(Id accountId, String newPhone) {
        Account acc = [SELECT Id, Phone FROM Account WHERE Id = :accountId];
        acc.Phone = newPhone;
        update acc;
    }
}