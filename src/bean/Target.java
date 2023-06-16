package bean;

public class Target 
{
	private int targetId;
	private int departmentNumber;
	private int projectNumber;
	private int employeeNumber;
	private int targetYear;
	
	Target(int targetId,int departmentNumber,int projectNumber,
			int employeeNumber)
	{
		this.targetId=targetId;
		this.departmentNumber=departmentNumber;
		this.projectNumber=projectNumber;
		this.employeeNumber=employeeNumber;
	}

	public int getTargetId() {
		return targetId;
	}

	public void setTargetId(int targetId) {
		this.targetId = targetId;
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

	public int getTargetYear() {
		return targetYear;
	}

	public void setTargetYear(int targetYear) {
		this.targetYear = targetYear;
	}
	
	
	
	
}
