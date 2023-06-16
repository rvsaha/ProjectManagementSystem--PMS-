package bean;

 

public class Project 
{
    private int departNumber;
    private int projectNumber;
    private String projectLeader;
    private String projectStartDate;
    private String projectDueDate;
    private int projectExpectedTime;
    private String priority;
    private String status;
    private int percentageCompletion;
    private String projectName;
    private String projectDesc;
    private int masterPlanNumber;
    
    
    public Project(int departNumber, int projectNumber, String projectLeader, String projectStartDate,
            String projectDueDate, int projectExpectedTime, String priority, String status, int percentageCompletion,
            String projectName, String projectDesc, int masterPlanNumber) 
    {
        super();
        this.departNumber = departNumber;
        this.projectNumber = projectNumber;
        this.projectLeader = projectLeader;
        this.projectStartDate = projectStartDate;
        this.projectDueDate = projectDueDate;
        this.projectExpectedTime = projectExpectedTime;
        this.priority = priority;
        this.status = status;
        this.percentageCompletion = percentageCompletion;
        this.projectName = projectName;
        this.projectDesc = projectDesc;
        this.masterPlanNumber = masterPlanNumber;
    }
    
    
    
    public int getDepartNumber() {
        return departNumber;
    }
    public void setDepartNumber(int departNumber) {
        this.departNumber = departNumber;
    }
    public int getProjectNumber() {
        return projectNumber;
    }
    public void setProjectNumber(int projectNumber) {
        this.projectNumber = projectNumber;
    }
    public String getProjectLeader() {
        return projectLeader;
    }
    public void setProjectLeader(String projectLeader) {
        this.projectLeader = projectLeader;
    }
    public String getProjectStartDate() {
        return projectStartDate;
    }
    public void setProjectStartDate(String projectStartDate) {
        this.projectStartDate = projectStartDate;
    }
    public String getProjectDueDate() {
        return projectDueDate;
    }
    public void setProjectDueDate(String projectDueDate) {
        this.projectDueDate = projectDueDate;
    }
    public int getProjectExpectedTime() {
        return projectExpectedTime;
    }
    public void setProjectExpectedTime(int projectExpectedTime) {
        this.projectExpectedTime = projectExpectedTime;
    }
    public String getPriority() {
        return priority;
    }
    public void setPriority(String priority) {
        this.priority = priority;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public int getPercentageCompletion() {
        return percentageCompletion;
    }
    public void setPercentageCompletion(int percentageCompletion) {
        this.percentageCompletion = percentageCompletion;
    }
    public String getProjectName() {
        return projectName;
    }

 


    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

 


    public String getProjectDesc() {
        return projectDesc;
    }

 


    public void setProjectDesc(String projectDesc) {
        this.projectDesc = projectDesc;
    }

 


    public int getMasterPlanNumber() {
        return masterPlanNumber;
    }

 


    public void setMasterPlanNumber(int masterPlanNumber) {
        this.masterPlanNumber = masterPlanNumber;
    }

 


    

 

}