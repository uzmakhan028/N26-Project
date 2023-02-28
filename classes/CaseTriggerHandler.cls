public class CaseTriggerHandler {

    @AuraEnabled
    public static  PricebookEntry displayProductdetails (Id csId){
        Case objCase = [SELECT id ,contactId,contact.Home_Country__c, contact.Product__c FROM Case where ID =: csId ];
        return FetchProductDetails_CLS.getPricingDetails(objCase.Contact.Product__c,objCase.Contact.Home_Country__c);
    }

        
}