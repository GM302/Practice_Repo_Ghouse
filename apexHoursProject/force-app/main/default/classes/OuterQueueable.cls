public class OuterQueueable implements Queueable {
    public void execute(QueueableContext context) {
        // Some logic here
        System.debug('Outer Queueable logic');

        // Enqueue the inner Queueable
        InnerQueueable innerJob = new InnerQueueable();
        System.enqueueJob(innerJob);
    }
}