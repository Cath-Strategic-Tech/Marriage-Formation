@isTest
private class TestGeneratePasscode {
    @isTest static void TestCreateEngagedCouple() {
        // Test passcode for new Engaged Couples
        // Create a new Engaged Couple, perform test
        Test.startTest();
        Engaged_Couple__c ec = new Engaged_Couple__c (Name='test couple');
        insert ec;
        Test.stopTest();
        
        // verify
        // a passcode should have been generated
        System.assert(ec.Passcode__c != 'null');
           
    }

}