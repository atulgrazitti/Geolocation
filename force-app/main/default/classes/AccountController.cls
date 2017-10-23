public with sharing class AccountController {
    public AccountController() {

    }
    @AuraEnabled
    public static List<Account> FindAll()
    {
        return [SELECT Id, Name, Geolocation__Latitude__s, Geolocation__Longitude__s  FROM Account
        WHERE Geolocation__Latitude__s != NULL AND Geolocation__Longitude__s !=   NULL  LIMIT 50];
    }
}
