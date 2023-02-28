public class FetchProductDetails_CLS {
    public static PricebookEntry getPricingDetails(Id idProduct,String strCountry){
        return [SELECT Id , ATM_Fee_in_other_currencies__c, UnitPrice, Card_Replacement_Cost__c,CurrencyIsoCode 
                FROM PricebookEntry 
                WHERE Product2Id =: idProduct AND Pricebook2.Home_Country__c=: strCountry AND IsActive =True LIMIT 1];  
    }
}