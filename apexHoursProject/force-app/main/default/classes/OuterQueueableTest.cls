@IsTest
public class OuterQueueableTest {
    
    static testmethod void testQueueable() {
       
        System.Test.startTest();

        // Enqueue the outer queueable job
        OuterQueueable outerJob = new OuterQueueable();
        Id jobId = System.enqueueJob(outerJob);

        
       System.Test.stopTest();

        // Verify that the job was enqueued
        System.assertNotEquals(null, jobId, 'Outer Queueable job should have been enqueued');

        // (Optional) Check that the jobs were enqueued and executed successfully
        List<AsyncApexJob> jobs = [SELECT Id, Status FROM AsyncApexJob WHERE Id = :jobId];
        System.assertEquals(1, jobs.size(), 'There should be one outer job.');
        System.assertEquals('Completed', jobs[0].Status, 'The outer job should have completed.');
    }
}