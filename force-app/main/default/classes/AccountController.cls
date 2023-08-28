public with sharing class AccountController {
    public AccountController() {

    }

    public static void getAccounts(){
        List<Account> accList = [SELECT Id FROM Account LIMIT 10];
    }

    public static Account getOneAccount(Id accId){
        return [SELECT Id,Name FROM Account WHERE Id=:accId LIMIT 1];
    }

    public static List<Contact> getRelatedContact(Id accId){
        return [SELECT Id FROM Contact WHERE AccountId=:accId];
    }

    public static List<Opportunity> getRelatedOpps(Id accId){
        return [SELECT Id,Name FROM Opportunity WHERE Id=:accId];
    }

    //This is test Branch 2
}
