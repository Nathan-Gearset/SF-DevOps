trigger CreateTaskUponCaseInsert on Case (after insert) {
    
     public void createTaskOnCase(List<Case> newCases) {
        List<Task> tasksToInsert = new List<Task>();
        
        for (Case newCase : newCases) {
            Task newTask = new Task(
                Subject = 'New Task for Case: ' + newCase.CaseNumber,
                WhatId = newCase.Id,
                Status = 'Closed',
                ActivityDate = Date.today()
            );
            tasksToInsert.add(newTask);
        }
        
         for (Case newCase : newCases) {
            Task newTask = new Task(
                Subject = 'New Task for Case: Send Email to:' + newCase.CaseNumber,
                WhatId = newCase.Id,
                Status = 'Closed',
                ActivityDate = Date.today()
            );
            tasksToInsert.add(newTask);
        }
        
        if (!tasksToInsert.isEmpty()) {
            insert tasksToInsert;
        }
    }
    
    createTaskOnCase(Trigger.new);
}