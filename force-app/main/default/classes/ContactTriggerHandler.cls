public class ContactTriggerHandler {
    public static void handleAfterInsert(Map<Id,Contact> newConMap) {
        Set<Id> accIdSet = new Set<Id>();
        for(Contact con : newConMap.Values()){
            if(con.AccountId <> null){
                 accIdSet.add(con.AccountId);
            }
           
        }
          List<AggregateResult> aggResultList = [Select count(Id) totalCount, AccountId
                                                From Contact
                                                Where AccountId IN :accIdSet 
                                                Group By AccountId];
          System.debug(aggResultList) ;
          List<Account> accListToUpdate = new List<Account>();          
          for(AggregateResult ag : aggResultList){
            String accountId = (String) ag.get('AccountId');
            Integer totalContact = (Integer) ag.get('totalCount'); 
            Account acc = new Account();
            acc.Id = accountId;
            acc.NumberOfContact__c = totalContact;
            accListToUpdate.add(acc);
            } 
            if(accListToUpdate.size() > 0) {
                update accListToUpdate; 
            }
                                              

    
    }
}