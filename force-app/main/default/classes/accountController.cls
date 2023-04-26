public with sharing class accountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> recentAccount(){
        try {
            List<Account> accList =[select Name, BillingCity, AnnualRevenue,CreatedDate from Account 
            order by CreatedDate DESC LIMIT 10];
            return accList;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}