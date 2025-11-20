public class OpportunityTriggerDispatcher {
    public static void dispatch(System.TriggerOperation operationType) {
        SWITCH ON operationType{
            WHEN AFTER_UPDATE{
                OpportunityTriggerHandler.handleAfterInsert(Trigger.New, (Map<Id, Opportunity>) Trigger.OldMap);
            }
            

            }
        }
        

    }