trigger ContactTrigger on Contact (After insert, After update, After delete, After Undelete) {
    // This is a comment
    ContactTriggerDispatcher.dispatch(Trigger.operationType);
}