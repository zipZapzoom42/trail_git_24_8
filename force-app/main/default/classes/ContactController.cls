public with sharing class ContactController {
    public ContactController() {

    }

    public static void getContacts(){
        List<Contact> contList = [SELECT Id FROM Contact];
    }
}