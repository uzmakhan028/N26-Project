@RestResource(urlMapping = '/ProductDetails/*')
global class ProductDetailAPI {
    
      @httpPost
    global static PricebookEntry displayProductdetails (String conExtUUId){
        
          RestRequest req = RestContext.request;
          RestResponse response = RestContext.response;   
       // String conExtUUId = request.requestURI.substring(request.requestURI.lastIndexOf('/')+1);
        Contact objContact = [select id ,Home_Country__c, Product__c from contact where Contact_UUID__c =: conExtUUId ];                    
        PricebookEntry PBE = FetchProductDetails_CLS.getPricingDetails(objContact.Product__c,objContact.Home_Country__c);
        
        
        return PBE;
    
    }

    

}