/**
 * @Author      : Vijay Kumar K R
 * @CreatedDate : Aug 1, 2022 
 * @Class       : CS_DynamicLookupController
 */
@isTest
public with sharing class CS_DynamicLookupControllerTest {
    
    @TestSetup
    static void testSetup(){

        test.starttest();
        Account objAcc = new Account(Name = 'testAcc');
        INSERT objAcc;
        INSERT new Contact(AccountId = objAcc.Id, LastName = 'testCont', Email = 'test@gmail.com');
        test.stoptest();

        String fields = 'Id, Name';
        CS_DynamicLookupController.fetchLookupData(fields, '', 'Contact', '', '');
        CS_DynamicLookupController.fetchLookupData(fields, 'test', 'Contact', '', '');
        CS_DynamicLookupController.fetchLookupData(fields, 'test', 'Contact', '', 'LastName');
        CS_DynamicLookupController.fetchLookupData(fields, '', 'Contact', 'AccountId = \''+objAcc.Id+'\'', '');
        CS_DynamicLookupController.fetchLookupData(fields, '', 'Contact', 'AccountId = \''+objAcc.Id+'\'', 'LastName');
    }

    @isTest
    public static void testLookupRecordById(){
        Contact objCont = [SELECT Id FROM Contact WHERE LastName = 'testCont' LIMIT 1]; 
        sObject obj = CS_DynamicLookupController.fetchRecordById(objCont.Id, 'Contact');
        System.assertNotEquals(obj, null);
    }

    @isTest
    public static void testLookupRecordByIdException(){ 
        try {
            sObject obj = CS_DynamicLookupController.fetchRecordById(UserInfo.getUserId(), 'Contact');
        } catch (Exception e) {
            System.assertNotEquals(e.getMessage(), null);   
        }
    }
}