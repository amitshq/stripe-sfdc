@isTest()
public class DeleteSubscriptionInStripeTest {
    @isTest static void testCallout() {
            
        Subscription__c sub1 = new Subscription__c();
        sub1.isActive__c = true;
       // Id subscriptionId = sub1.Id; 
		Id subscriptionId = 'a005j000004rHQY'; 
        String Apikey = 'sk_test_51Jz2MJSDdfL2No7pI9cHJmBtLwReGSPynyCkEjUdLXcUYxx9sOdmiadMY3TQf7PjnbIvsAu7gPiLyA6tNYrmFp8k00otexy4CV';
        String subId = 'sub_1K1vZlSDdfL2No7p8yuUdNon';
        String sub_schdId = 'sub_sched_1K2TdzSDdfL2No7pm8Arjkhy';
        Test.setMock(HttpCalloutMock.class, new MockHttpResponseGeneratorDelete());
        DeleteSubscriptionInStripe.getScription(subscriptionId, Apikey, sub_schdId);
        
    }
}