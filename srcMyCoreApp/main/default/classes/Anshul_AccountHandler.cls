public class Anshul_AccountHandler {
    public static void method1(){
        Account acc = new Account();
        acc.Name = 'test account';
        insert acc;
		System.debug('This is a test commit');
    }
}