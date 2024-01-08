@IsTest
private class AccountTrackerTest {
    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account',Description='Default description');
        insert acc;
        acc = AccountTracker.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description);
    }
}