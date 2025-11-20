public class ContactTriggerDispatcher {
    public static void dispatch(System.TriggerOperation operationType) {
        SWITCH ON operationType{
             WHEN AFTER_INSERT{
                ContactTriggerHandler.handleAfterInsert((Map<Id,Contact>)Trigger.newMap);
            }
           
            }

    }
}