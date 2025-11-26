trigger CreateContactOnHotRating on Account (after update) {
    List<Contact> contactsToInsert = new List<Contact>();

    for (Account acc : Trigger.new) {
        Account oldAcc = Trigger.oldMap.get(acc.Id);
        
        // Check if Rating changed to "Hot"
        if (acc.Rating == 'Hot' && oldAcc.Rating != 'Hot') {
            Contact con = new Contact();
            con.FirstName = 'Auto';
            con.LastName = acc.Name + ' Contact';
            con.Email = acc.Name.replaceAll('\\s+', '').toLowerCase() + '@example.com';
            con.AccountId = acc.Id;

            contactsToInsert.add(con);
        }
    }

    if (!contactsToInsert.isEmpty()) {
        insert contactsToInsert;
    }
}