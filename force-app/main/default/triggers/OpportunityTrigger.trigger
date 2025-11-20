trigger OpportunityTrigger on Opportunity (After Update) {

OpportunityTriggerDispatcher.dispatch(Trigger.operationType);
}