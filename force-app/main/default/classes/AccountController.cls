public with sharing class AccountController {
    public AccountController() {

    }

    public static void getAccounts(){
        List<Account> accList = [SELECT Id FROM Account LIMIT 10];
    }
}