public with sharing class ContactController {
    public ContactController() {

    }

    public static void getContacts(){
        List<Contact> contList = [SELECT Id FROM Contact];
    }

    public static Contact getContact(Id contId){
        return [SELECT Id,Name FROM Contact WHERE Id=:contId]; 
    }

    //Adding one change in main branch
}