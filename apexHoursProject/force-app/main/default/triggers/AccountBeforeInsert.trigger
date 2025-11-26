trigger AccountBeforeInsert on Account (before insert) {
    for (Account acc : Trigger.new) {
        
        // Example 1: Set a default value if field is blank
        if (String.isBlank(acc.Industry)) {
            acc.Industry = 'Technology';
        }

        // Example 2: Auto-populate a custom field
        //acc.Custom_Code__c = 'ACC-' + System.currentTimeMillis();

        // Example 3: Validation - prevent invalid data
        if (acc.AnnualRevenue != null && acc.AnnualRevenue < 0) {
            acc.addError('Annual Revenue cannot be negative.');
        }
    }
}