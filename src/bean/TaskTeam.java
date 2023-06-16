package bean;

public class TaskTeam {
	   private int departmentNumber;
	    private int projectNumber;
	    private int employeeNumber;
	    private int taskNumber;
	    
	    TaskTeam(int departmentNumber,int projectNumber,int employeeNumber,int taskNumber)
	    {
	        this.departmentNumber=departmentNumber;
	        this.projectNumber=projectNumber;
	        this.employeeNumber=employeeNumber;
	        this.taskNumber=taskNumber;
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

	 
	    

	   
}
