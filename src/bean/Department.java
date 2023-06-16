package bean;

public class Department 
{
	private int departmentNumber;
	private String departmentName;
	private String headDepartmentName;
	
	public Department(int departmentNumber,String departmentName,String headDepartmentName)
	{
		this.departmentName=departmentName;
		this.departmentNumber=departmentNumber;
		this.headDepartmentName=headDepartmentName;
	}

	public int getDepartmentNumber() {
		return departmentNumber;
	}

	public void setDepartmentNumber(int departmentNumber) {
		this.departmentNumber = departmentNumber;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public String getHeadDepartmentName() {
		return headDepartmentName;
	}

	public void setHeadDepartmentName(String headDepartmentName) {
		this.headDepartmentName = headDepartmentName;
	}
}
