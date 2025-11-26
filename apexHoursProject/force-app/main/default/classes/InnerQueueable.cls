public class InnerQueueable implements Queueable {
    public void execute(QueueableContext context) {
        // Some inner job logic here
        System.debug('Inner Queueable logic');
    }
}