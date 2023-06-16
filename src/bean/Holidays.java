package bean;
import java.util.Date;
public class Holidays {
	private Date holidayDate;
	private String reason;
	
	Holidays(Date holidayDate,String reason)
	{
		this.holidayDate=holidayDate;
		this.reason=reason;
	}

	public Date getHolidayDate() {
		return holidayDate;
	}

	public void setHolidayDate(Date holidayDate) {
		this.holidayDate = holidayDate;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	
}
