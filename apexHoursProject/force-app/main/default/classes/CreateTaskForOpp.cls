//Whenever an Opportunity is Closed Won, create a Task for the Opportunity Owner to split the revenue among the team with high priority

public class CreateTaskForOpp {
    
    public static void createTask(List<Opportunity> oppList){
        List<Task> newTaskList = new List<Task>();
        for(Opportunity op : oppList){
            if(op.stagename == 'closed won'){
                
                Task newTask = new Task(
                WhatId = op.Id,
                OwnerId = op.OwnerId,
                Subject = 'Split revenue among team',
                Priority = 'High',
                Status = 'Not Started',
                ActivityDate = System.today() + 7 // Due date one week from today
                );
                newTaskList.add(newTask);
            }
        }
        
        if(!newTaskList.isEmpty()){
            insert newTaskList;
        }
        
    }

}