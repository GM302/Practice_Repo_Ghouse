@isTest
public class mynewClscTest {

    @isTest
    static void testCreateAccount() {
        // Call the method
        Id accId = mynewClsc.createAccount('Test Account', '1234567890');

        // Query account to verify
        Account acc = [SELECT Name, Phone FROM Account WHERE Id = :accId];

        System.assertEquals('Test Account', acc.Name, 'Account name should match');
        System.assertEquals('1234567890', acc.Phone, 'Phone number should match');
    }

    @isTest
    static void testUpdatePhone() {
        // Create test data
        Account acc = new Account(
            Name = 'Sample Account',
            Phone = '1111111111'
        );
        insert acc;

        // Call update method
        Id accId = mynewClsc.createAccount('Test Account', '1234567890');
        mynewClsc.updatePhone(acc.Id, '2222222222');

        // Query updated record
        Account updatedAcc = [SELECT Phone FROM Account WHERE Id = :acc.Id];

        System.assertEquals('2222222222', updatedAcc.Phone, 'Phone should be updated');
    }
}