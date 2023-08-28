public with sharing class AccountController {
    public AccountController() {

    }

    public static void getAccounts(){
        List<Account> accList = [SELECT Id FROM Account LIMIT 10];
    }

    public static Account getOneAccount(Id accId){
        return [SELECT Id,Name FROM Account WHERE Id=:accId];
    }
}
