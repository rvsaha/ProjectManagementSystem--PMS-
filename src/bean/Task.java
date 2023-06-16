package bean;

 

public class Task {
    private int departmentNumber;
    private int projectNumber;
    private int taskNumber;
    private String taskName;
    private String startDate;
    private String dueDate;
    private String priorityStatus;
    private String taskStatus;
    private int percentageComplete;
    private String constraintType;
    private String constraintDate;
    private String summary;
    private String dateCreated;
    private String lastUpdated;

 

    public Task(int departmentNumber, int projectNumber, int taskNumber, String taskName, String startDate,
            String dueDate, String priority, String status, int percentageComplete, String constraintType,
            String constraintDate, String summary, String dateCreated, String lastUpdated) 
    {
        
        this.departmentNumber = departmentNumber;
        this.projectNumber = projectNumber;
        this.taskNumber = taskNumber;
        this.taskName = taskName;
        this.startDate = startDate;
        this.dueDate = dueDate;
        this.priorityStatus = priority;
        this.taskStatus = status;
        this.percentageComplete = percentageComplete;
        this.constraintType = constraintType;
        this.constraintDate = constraintDate;
        this.summary = summary;
        this.dateCreated = dateCreated;
        this.lastUpdated = lastUpdated;
    }

 

    public int getDepartmentNumber() {
        return departmentNumber;
    }

 

    public void setDepartmentNumber(int departmentNumber) {
        this.departmentNumber = departmentNumber;
    }

 

    public int getProjectNumber() {
        return projectNumber;
    }

 

    public void setProjectNumber(int projectNumber) {
        this.projectNumber = projectNumber;
    }

 

    public int getTaskNumber() {
        return taskNumber;
    }

 

    public void setTaskNumber(int taskNumber) {
        this.taskNumber = taskNumber;
    }

 

    public String getTaskName() {
        return taskName;
    }

 

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

 

    public String getStartDate() {
        return startDate;
    }

 

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

 

    public String getDueDate() {
        return dueDate;
    }

 

    public void setDueDate(String dueDate) {
        this.dueDate = dueDate;
    }

 

    public String getPriority() {
        return priorityStatus;
    }

 

    public void setPriority(String priority) {
        this.priorityStatus = priority;
    }

 

    public String getStatus() {
        return taskStatus;
    }

 

    public void setStatus(String status) {
        this.taskStatus = status;
    }

 

    public int getPercentageComplete() {
        return percentageComplete;
    }

 

    public void setPercentageComplete(int percentageComplete) {
        this.percentageComplete = percentageComplete;
    }

 

    public String getConstraintType() {
        return constraintType;
    }

 

    public void setConstraintType(String constraintType) {
        this.constraintType = constraintType;
    }

 

    public String getConstraintDate() {
        return constraintDate;
    }

 

    public void setConstraintDate(String constraintDate) {
        this.constraintDate = constraintDate;
    }

 

    public String getSummary() {
        return summary;
    }

 

    public void setSummary(String summary) {
        this.summary = summary;
    }

 

    public String getDateCreated() {
        return dateCreated;
    }

 

    public void setDateCreated(String dateCreated) {
        this.dateCreated = dateCreated;
    }

 

    public String getLastUpdated() {
        return lastUpdated;
    }

 

    public void setLastUpdated(String lastUpdated) {
        this.lastUpdated = lastUpdated;
    }

 

}