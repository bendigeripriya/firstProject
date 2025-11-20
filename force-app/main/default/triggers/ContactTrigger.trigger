trigger ContactTrigger on Contact (After insert, After update, After delete, After Undelete) {

    ContactTriggerDispatcher.dispatch(Trigger.operationType);
}