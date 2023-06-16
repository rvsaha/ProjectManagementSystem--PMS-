package bean;

import java.util.Date;

public class MasterPlan {

	private int masterPlanNumber;
	private String masterPlanDescription;
	private String masterPlanStartdate;
	private String masterPlanExpectedEndDate;
	private String masterPlanPriority;
	private String masterPlanStatus;
	private int masterPlanPercentageCompleted;
	
	public MasterPlan(int masterPlanNumber, String masterPlanDescription, String masterPlanStartdate,String masterPlanExpectedEndDate,String masterPlanPriority)
	{
		this.masterPlanNumber=masterPlanNumber;
		this.masterPlanDescription=masterPlanDescription;
		this.masterPlanStartdate=masterPlanStartdate;
		this.masterPlanExpectedEndDate=masterPlanExpectedEndDate;
		this.masterPlanPriority=masterPlanPriority;
	}
	

	public MasterPlan(int masterPlanNumber, String masterPlanDescription, String masterPlanStartdate,
			String masterPlanExpectedEndDate, String masterPlanPriority, String masterPlanStatus,
			int masterPlanPercentageCompleted) {
		super();
		this.masterPlanNumber = masterPlanNumber;
		this.masterPlanDescription = masterPlanDescription;
		this.masterPlanStartdate = masterPlanStartdate;
		this.masterPlanExpectedEndDate = masterPlanExpectedEndDate;
		this.masterPlanPriority = masterPlanPriority;
		this.masterPlanStatus = masterPlanStatus;
		this.masterPlanPercentageCompleted = masterPlanPercentageCompleted;
	}

	
	
	public int getMasterPlanNumber() {
		return masterPlanNumber;
	}

	public void setMasterPlanNumber(int masterPlanNumber) {
		this.masterPlanNumber = masterPlanNumber;
	}

	public String getMasterPlanDescription() {
		return masterPlanDescription;
	}

	public void setMasterPlanDescription(String masterPlanDescription) {
		this.masterPlanDescription = masterPlanDescription;
	}

	public String getMasterPlanStartdate() {
		return masterPlanStartdate;
	}

	public void setMasterPlanStartdate(String masterPlanStartdate) {
		this.masterPlanStartdate = masterPlanStartdate;
	}

	public String getMasterPlanExpectedEndDate() {
		return masterPlanExpectedEndDate;
	}

	public void setMasterPlanExpectedEndDate(String masterPlanExpectedEndDate) {
		this.masterPlanExpectedEndDate = masterPlanExpectedEndDate;
	}


	public String getMasterPlanPriority() {
		return masterPlanPriority;
	}

	public void setMasterPlanPriority(String masterPlanPriority) {
		this.masterPlanPriority = masterPlanPriority;
	}

	public String getMasterPlanStatus() {
		return masterPlanStatus;
	}

	public void setMasterPlanStatus(String masterPlanStatus) {
		this.masterPlanStatus = masterPlanStatus;
	}

	public int getMasterPlanPercentageCompleted() {
		return masterPlanPercentageCompleted;
	}

	public void setMasterPlanPercentageCompleted(int masterPlanPercentageCompleted) {
		this.masterPlanPercentageCompleted = masterPlanPercentageCompleted;
	}
}
