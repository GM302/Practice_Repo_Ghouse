public class PriorityUpdate {
    
    public static void updatPriority(List<Task> taskList){
        
        for(Task tk : taskList){
            
            tk.Priority = 'High';
        }
    }

}