package bean;

public class ProjectTeam 
{
	private int departmentNumber;
	private int projectNumber;
	private int employeeNumber;
	
	ProjectTeam(int departmentNumber,int projectNumber,int employeeNumber)
	{
		this.departmentNumber=departmentNumber;
		this.projectNumber=projectNumber;
		this.employeeNumber=employeeNumber;
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
	

}
