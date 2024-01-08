public class AccountTracker {
    //Princy: US-0000067 test commit : 1
    public static Account setDefaultDescription(Account a) {
        a.Description = 'Default Test description';
        a.Description = Label.TEST_Princy;
        return a;
    }
}