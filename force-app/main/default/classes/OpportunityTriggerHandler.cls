public class OpportunityTriggerHandler {
    public static void handleAfterInsert(List<Opportunity> OppList, Map<Id, Opportunity> OldOppMap) {
        List<Task> taskList = new List<Task>();
        //Map<Id, Opportunity> oppMap = new Map<Id, Opportunity>();
for(Opportunity opp : OppList){
    Opportunity OldOppList = OldOppMap.get(Opp.Id);
if(opp.StageName == 'Closed Won' && OldOppList.StageName != 'Closed Won'){
    Task t = new Task ();
    t.Subject = 'New Opportunity' ;
    t.WhatId = opp.Id;
    t.Status = 'Not Started';
    t.ownerId = Opp.ownerId;  
    taskList.add(t);    
}
}

If(taskList.size() > 0){
insert taskList;
}
        

    }
}