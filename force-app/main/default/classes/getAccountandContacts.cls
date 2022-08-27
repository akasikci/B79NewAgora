public with sharing class getAccountandContacts {
    
    @AuraEnabled (cacheable=true)
    public static List<Account> getChildAccounts(String parentAccId){
        return [SELECT Id, Name, BillingCountry, BillingState, BillingCity 
                FROM Account WHERE ParentId =: parentAccId with SECURITY_ENFORCED];
    }

    @AuraEnabled (cacheable=true)
    public static List<Contact> getChildContacts(String childAccId){
        return [SELECT Id, Name, MailingCountry, MailingState, MailingCity 
                FROM Contact WHERE AccountId =: childAccId with SECURITY_ENFORCED];
    }

}
