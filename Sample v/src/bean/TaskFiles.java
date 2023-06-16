package bean;
import java.util.Date;
public class TaskFiles
{
	private int departmentNumber;
	private int projectNumber;
	private int taskNumber;
	private int employeeNumber;
	private String fileName;
	private String description;
	private Date uploadDate;
	
	TaskFiles(int departmentNumber,int projectNumber,int employeeNumber,
			String fileName,Date uploadDate,int taskNumber)
	{
		this.departmentNumber=departmentNumber;
		this.projectNumber=projectNumber;
		this.taskNumber=taskNumber;
		this.employeeNumber=employeeNumber;
		this.fileName=fileName;
		this.uploadDate=uploadDate;
	}
	//getter setter method
	 public int getDepartmentNumber() {
	        return departmentNumber;
	    }

    public void setDepartmentNumber(int departmentNumber) {
	        this.departmentNumber = departmentNumber;
	    }
	

    public int getTaskNumber() {
        return taskNumber;
    }

    public void setTaskNumber(int taskNumber) {
        this.taskNumber = taskNumber;
    }
    
    public int getEmployeeNumber() {
        return employeeNumber;
    }

    public void setEmployeeNumber(int employeeNumber) {
        this.employeeNumber = employeeNumber;
    }
    
    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
	public int getProjectNumber() {
		return projectNumber;
	}
	public void setProjectNumber(int projectNumber) {
		this.projectNumber = projectNumber;
	}
	public Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
    
   
}
