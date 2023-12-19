@IsTest
private class DevTrackerTest {
    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account',Description='Default Test description');
        insert acc;
        acc = DevTracker.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description);
    }
}