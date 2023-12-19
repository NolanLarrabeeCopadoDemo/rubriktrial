@IsTest
private class devclasstest {
    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account',Description='Default description');
        insert acc;
        acc = devclass.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description);
    }
}