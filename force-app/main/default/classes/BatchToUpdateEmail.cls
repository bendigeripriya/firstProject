public class BatchToUpdateEmail implements Database.Batchable<sObject> {

    public Database.QueryLocator start(Database.BatchableContext BC) {
        return Database.getQueryLocator('Select Id, Name, Email From Contact Where Email != null');
 }

    public void execute(Database.BatchableContext BC, List<contact> con){
        for(Contact conList : con){
            if(conList.Email != null && conList.Email.endsWith('@oldCompany.com')){
                conList.Email = conList.Email.replace('@oldCompany.com', '@newCompany.com');
            }
            update conList;
        }

        
    }
    Public void finish(Database.BatchableContext BC){

    }    
}