@isTest
public class MyAccountUtilTest {

    @isTest
    static void testGetAccountPhone()  {
        // Create account with a phone number
        Account acc = new Account(
            Name = 'Test Acc',
            Phone = '12345'
        );
        insert acc;

        // Call the method
        String phone = MyAccountUtil.getAccountPhone(acc.Id);

        // Assert result
        System.assertEquals('12345', phone);
    }
}