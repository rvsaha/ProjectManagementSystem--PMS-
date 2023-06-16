package bean;

import java.util.Date;

public class DepartmentProject 
{
	private String departNumber;
	private String projectNumber;
	private String projectLeader;
	private Date projectStartDate;
	private Date projectDueDate;
	private int projectExpectedTime;
	private int priority;
	private String status;
	private int percentageCompletion;
	private String notes;
	
	
	public DepartmentProject(String departNumber,String projectNumber,String projectLeader,Date projectStartDate,Date projectDueDate,int projectExpectedTime,int priority)
	{
		this.departNumber=departNumber;
		this.projectNumber=projectNumber;
		this.projectLeader=projectLeader;
		this.projectStartDate=projectStartDate;
		this.projectDueDate=projectDueDate;
		this.projectExpectedTime=projectExpectedTime;
		this.priority=priority;
	}
	
	
	public String getDepartNumber() {
		return departNumber;
	}
	public void setDepartNumber(String departNumber) {
		this.departNumber = departNumber;
	}
	public String getProjectNumber() {
		return projectNumber;
	}
	public void setProjectNumber(String projectNumber) {
		this.projectNumber = projectNumber;
	}
	public String getProjectLeader() {
		return projectLeader;
	}
	public void setProjectLeader(String projectLeader) {
		this.projectLeader = projectLeader;
	}
	public Date getProjectStartDate() {
		return projectStartDate;
	}
	public void setProjectStartDate(Date projectStartDate) {
		this.projectStartDate = projectStartDate;
	}
	public Date getProjectDueDate() {
		return projectDueDate;
	}
	public void setProjectDueDate(Date projectDueDate) {
		this.projectDueDate = projectDueDate;
	}
	public int getProjectExpectedTime() {
		return projectExpectedTime;
	}
	public void setProjectExpectedTime(int projectExpectedTime) {
		this.projectExpectedTime = projectExpectedTime;
	}
	public int getPriority() {
		return priority;
	}
	public void setPriority(int priority) {
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
	public String getNotes() {
		return notes;
	}
	public void setNotes(String notes) {
		this.notes = notes;
	}
	

}
