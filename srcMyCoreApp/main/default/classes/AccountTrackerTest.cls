@IsTest
private class AccountTrackerTest {
    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account',Description='Default description', Copado_External_ID__c = 'Test');
        insert acc;
        acc = AccountTracker.setDefaultDescription(acc);
        //System.assertEquals('Default description', acc.Description);
        System.assertEquals('test Copado-Princy', acc.Description);
    }
}