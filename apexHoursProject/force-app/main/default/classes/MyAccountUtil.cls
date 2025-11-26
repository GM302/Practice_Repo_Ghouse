public class MyAccountUtil {

    public static String getAccountPhone(Id accId) {
        Account acc = [SELECT Phone FROM Account WHERE Id = :accId LIMIT 1];

        if (acc.Phone != null) {
            return acc.Phone;
        }

        // This return will NOT be covered in the test (to keep coverage ~75%)
        return 'No Phone Available';
    }
}