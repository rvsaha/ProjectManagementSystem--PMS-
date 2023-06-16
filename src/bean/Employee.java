package bean;

public class Employee 
{
	private int empNumber;
	private String empSalutation;
	private String empFirstName;
	private String empLastName;
	private String empAddress;
	private String empCity;
	private String empState;
	private int empPincode;
	private String empOfficePhone;
	private String empMobileNumber;
	private String empEmail;
	private String empUserName;
	private String empPassword;
	private int deptNumber;
	private String role;
	private String dob;
	private String gender;
	
	
	public Employee(int empNumber, String empSalutation, String empFirstName, String empLastName, String empAddress,
			String empCity, String empState, int empPincode, String empOfficePhone, String empMobileNumber,
			String empEmail, String empUserName, String empPassword, int deptNumber, String role, String dob,
			String gender) {
		super();
		this.empNumber = empNumber;
		this.empSalutation = empSalutation;
		this.empFirstName = empFirstName;
		this.empLastName = empLastName;
		this.empAddress = empAddress;
		this.empCity = empCity;
		this.empState = empState;
		this.empPincode = empPincode;
		this.empOfficePhone = empOfficePhone;
		this.empMobileNumber = empMobileNumber;
		this.empEmail = empEmail;
		this.empUserName = empUserName;
		this.empPassword = empPassword;
		this.deptNumber = deptNumber;
		this.role = role;
		this.dob = dob;
		this.gender = gender;
	}

	public Employee(String empUserName,String password,String role) {
		this.empUserName=empUserName;
		this.empPassword=password;
		this.role=role;
	}
	

	public Employee() {
		// TODO Auto-generated constructor stub
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getEmpNumber() {
		return empNumber;
	}
	public void setEmpNumber(int empNumber) {
		this.empNumber = empNumber;
	}
	public String getEmpSalutation() {
		return empSalutation;
	}
	public void setEmpSalutation(String empSalutation) {
		this.empSalutation = empSalutation;
	}
	public String getEmpFirstName() {
		return empFirstName;
	}

	public void setEmpFirstName(String empFirstName) {
		this.empFirstName = empFirstName;
	}

	public String getEmpLastName() {
		return empLastName;
	}

	public void setEmpLastName(String empLastName) {
		this.empLastName = empLastName;
	}

	
	public String getEmpAddress() {
		return empAddress;
	}
	public void setEmpAddress(String empAddress) {
		this.empAddress = empAddress;
	}
	public String getEmpCity() {
		return empCity;
	}
	public void setEmpCity(String empCity) {
		this.empCity = empCity;
	}
	public String getEmpState() {
		return empState;
	}
	public void setEmpState(String empState) {
		this.empState = empState;
	}
	public int getEmpPincode() {
		return empPincode;
	}
	public void setEmpPincode(int empPincode) {
		this.empPincode = empPincode;
	}
	public String getEmpOfficePhone() {
		return empOfficePhone;
	}
	public void setEmpOfficePhone(String empOfficePhone) {
		this.empOfficePhone = empOfficePhone;
	}
	public String getEmpMobileNumber() {
		return empMobileNumber;
	}
	public void setEmpMobileNumber(String empMobileNumber) {
		this.empMobileNumber = empMobileNumber;
	}
	public String getEmpEmail() {
		return empEmail;
	}
	public void setEmpEmail(String empEmail) {
		this.empEmail = empEmail;
	}
	public String getEmpUserName() {
		return empUserName;
	}
	public void setEmpUserName(String empUserName) {
		this.empUserName = empUserName;
	}
	public String getEmpPassword() {
		return empPassword;
	}
	public void setEmpPassword(String empPassword) {
		this.empPassword = empPassword;
	}
	public int getDeptNumber() {
		return deptNumber;
	}
	public void setDeptNumber(int deptNumber) {
		this.deptNumber = deptNumber;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
