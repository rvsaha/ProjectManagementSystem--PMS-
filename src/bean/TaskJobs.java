package bean;

public class TaskJobs {

	 private int departmentNumber;
	    private int projectNumber;
	    private int employeeNumber;
	    private int taskNumber;
	    private int jobNumber;
	    private String jobName;
	    private int weightage;
	    private int percentageCompleted;
	    
	    
	    TaskJobs(int departmentNumber,int projectNumber,int employeeNumber,
         int taskNumber,int jobNumber,String jobName,int weightage,int percentageCompleted)
	    {
	        this.departmentNumber=departmentNumber;
	        this.projectNumber=projectNumber;
	        this.employeeNumber=employeeNumber;
	        this.taskNumber=taskNumber;
	        this.jobNumber=jobNumber;
	        this.jobName=jobName;
	        this.weightage=weightage;
	        this.percentageCompleted=percentageCompleted;
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


		public int getEmployeeNumber() {
			return employeeNumber;
		}


		public void setEmployeeNumber(int employeeNumber) {
			this.employeeNumber = employeeNumber;
		}


		public int getTaskNumber() {
			return taskNumber;
		}


		public void setTaskNumber(int taskNumber) {
			this.taskNumber = taskNumber;
		}


		public int getJobNumber() {
			return jobNumber;
		}


		public void setJobNumber(int jobNumber) {
			this.jobNumber = jobNumber;
		}


		public String getJobName() {
			return jobName;
		}


		public void setJobName(String jobName) {
			this.jobName = jobName;
		}


		public int getWeightage() {
			return weightage;
		}


		public void setWeightage(int weightage) {
			this.weightage = weightage;
		}


		public int getPercentageCompleted() {
			return percentageCompleted;
		}


		public void setPercentageCompleted(int percentageCompleted) {
			this.percentageCompleted = percentageCompleted;
		}

	 


	    
	
}
