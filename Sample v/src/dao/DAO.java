package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.swing.DebugGraphics;

import bean.Employee;
import bean.MasterPlan;
import bean.Project;
import bean.ContactUs;
import bean.Department;
import bean.*;
import dbUtils.DBConnection;
/*import bean.MasterPlan;
*/
public class DAO 
{	
	
	ResultSet rs=null;
	Statement stmt = null;
	Connection con=null;
	public boolean validate(Employee emp)
	{
		boolean status = false;
		try
		{
			con=DBConnection.getConnection();
			String query="Select * from employee where username = '"+emp.getEmpUserName()+"' and password = '"+emp.getEmpPassword()+"' and role='"+emp.getRole()+"'";
			System.out.println(emp.getEmpUserName()+"  "+emp.getEmpPassword()+"  "+emp.getRole());
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			while(rs.next())
			{
				String username=rs.getString("Username");
				String password1=rs.getString("password");
				String role=rs.getString("role");
				System.out.println(username+" "+password1+"  "+role);
				System.out.println("in while loop");
				status = true;
			}
		}
		catch(Exception e)
			{
				e.printStackTrace();
			}
		System.out.println(status);
		return status;
	}
	
	public boolean addDepartment(Department d)
	{
		boolean status = false;
		try
		{
			
				con=DBConnection.getConnection();
				String query="Insert into department values("+d.getDepartmentNumber()+",'"+d.getDepartmentName()+"','"+d.getHeadDepartmentName()+"')";
				System.out.println(d.getDepartmentNumber()+"  "+d.getDepartmentName()+"  "+d.getHeadDepartmentName());
				stmt = con.createStatement();
				rs = stmt.executeQuery(query);
				status=true;
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println(status);
		return status; 
	}
	

	public boolean deleteDepartment(int dn)
	{
		boolean status = false;
		try
		{
			System.out.println("in dao");
			 con=DBConnection.getConnection();
			 
				 String query="Delete from department where deptNumber="+dn;
				 //System.out.println(dn);
				 stmt = con.createStatement();
				 rs = stmt.executeQuery(query);
				 status=true;
				 //System.out.println(rs.next());
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		System.out.println(status);
		return status;
	         
	}

	public boolean editDepartment(Department d)
	{
		boolean status = false;
		try
		{
			con=DBConnection.getConnection();
			 
				 String query="Update department SET deptName= '"+d.getDepartmentName()+"', hoddept='"+d.getHeadDepartmentName()+"'where deptNumber='"+d.getDepartmentNumber()+"'";
				 stmt = con.createStatement();
				 rs = stmt.executeQuery(query);
				 status=true;
			
			 
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		System.out.println(status);
		return status;
	         
		}
	
	public boolean addEmployee(Employee emp)
    {
        boolean status = false;
        try
        {
       
            con=DBConnection.getConnection();
            String query="Insert into employee values("+emp.getEmpNumber()+",'"+emp.getEmpSalutation()+"','"+emp.getEmpFirstName()+"','"+emp.getEmpLastName()+"','"+emp.getEmpAddress()+"','"+emp.getEmpCity()+"','"+emp.getEmpState()+"',"+emp.getEmpPincode()+",'"+emp.getEmpOfficePhone()+"','"+emp.getEmpMobileNumber()+"','"+emp.getEmpEmail()+"','"+emp.getEmpUserName()+"','"+emp.getEmpPassword()+"',"+emp.getDeptNumber()+",'"+emp.getRole()+"','"+emp.getDob()+"','"+emp.getGender()+"')";
            System.out.println(query);
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            status=true;
       
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        System.out.println(status);
        return status;    
    }

	public boolean deleteEmployee(int empno) 
	{
		boolean status = false;
	try
	{
		System.out.println("in dao");
		 con=DBConnection.getConnection();
		 
			 String query="Delete from employee where empnumber="+empno;
			 //System.out.println(dn);
			 stmt = con.createStatement();
			 rs = stmt.executeQuery(query);
			 status=true;
			 //System.out.println(rs.next());
		
	}
	catch(Exception e)
	{
		System.out.println(e.getMessage());
	}
	System.out.println(status);
	return status;
	}
	
	public boolean addMasterPlan(MasterPlan mp)
    {
        boolean status = false;
        try
        {
       
            con=DBConnection.getConnection();
            String query="Insert into masterplan values("+mp.getMasterPlanNumber()+",'"+mp.getMasterPlanDescription()+"','"+mp.getMasterPlanStartdate()+"','"+mp.getMasterPlanExpectedEndDate()+"','"+mp.getMasterPlanPriority()+"','"+mp.getMasterPlanStatus()+"','"+mp.getMasterPlanPercentageCompleted()+"')";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            //System.out.println(rs.next());
            status=true;
       
           
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        System.out.println(status);
        return status;
        
    }
 
public boolean deleteMasterPlan(int pn)
{
    boolean status = false;
    try
    {

        con=DBConnection.getConnection();
        String query="Delete from masterplan where masterplannumber="+pn;
        stmt = con.createStatement();
        rs = stmt.executeQuery(query);
        status=true;
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    return status;
    
}

public boolean editMasterPlan(MasterPlan mp)
{
    boolean status = false;
    try
    {
    		con=DBConnection.getConnection();
            String query="Update masterplan SET masterplandesc= '"+mp.getMasterPlanDescription()+"', startdate='"+mp.getMasterPlanStartdate()+"', expectedenddate='"+mp.getMasterPlanExpectedEndDate()+"', priority='"+mp.getMasterPlanPriority()+"',status='"+mp.getMasterPlanStatus()+"',percentagecomplete='"+mp.getMasterPlanPercentageCompleted()+"' where masterplannumber= "+mp.getMasterPlanNumber();
            System.out.println(query);
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            status=true; 
    }
    catch(Exception e)
    {
       e.printStackTrace();
    }
    System.out.println(status);
    return status;
    
}
	
	
public boolean addContactUs(ContactUs cont)
{
    boolean status = false;
    try
    {
  
        con=DBConnection.getConnection();
        String query="Insert into contact values('"+cont.getName()+"','"+cont.getEmail()+"','"+cont.getContactNumber()+"','"+cont.getMessage()+"')";
        stmt = con.createStatement();
        rs = stmt.executeQuery(query);
        status=true;
  
}
    catch(Exception e)
    {
        System.out.println(e.getMessage());
    }
    System.out.println(status);
    return status;
   
}

public boolean addProject(Project pro)
{
    boolean status=false;
    try
    {
        con=DBConnection.getConnection();
        String query= "Insert into project values ("+pro.getDepartNumber()+","+pro.getProjectNumber()+",'"+pro.getProjectLeader()+"','"+pro.getProjectStartDate()+"','"+pro.getProjectDueDate()+"',"+pro.getProjectExpectedTime()+",'"+pro.getPriority()+"','"+pro.getStatus()+"',"+pro.getPercentageCompletion()+",'"+pro.getProjectName()+"','"+pro.getProjectDesc()+"',"+pro.getMasterPlanNumber()+")";
        System.out.println(query);
        stmt = con.createStatement();
        rs = stmt.executeQuery(query);
        status=true;
    }
     catch(Exception e)
    {
        e.printStackTrace();
    }
    System.out.println(status);
    return status;
}

public boolean editProject(Project pro) 
{
	boolean status=false;
    try
    {
        con=DBConnection.getConnection();
        String query= "Update project SET deptnumber="+pro.getDepartNumber()+",projectleader='"+pro.getProjectLeader()+"',startdate='"+pro.getProjectStartDate()+"',duedate='"+pro.getProjectDueDate()+"',expectedtime="+pro.getProjectExpectedTime()+",priority='"+pro.getPriority()+"',status='"+pro.getStatus()+"',percentagecomplete="+pro.getPercentageCompletion()+",projectname='"+pro.getProjectName()+"',masterplannumber="+pro.getMasterPlanNumber()+",projectDesc='"+pro.getProjectDesc()+"' where projectnumber="+pro.getProjectNumber();
        System.out.println(query);
        stmt = con.createStatement();
        rs = stmt.executeQuery(query);
        status=true;
    }
     catch(Exception e)
    {
        e.printStackTrace();
    }
    System.out.println(status);
	return status;
}
public boolean deleteProject(int pNo) 
{
     boolean status = false;
        try
        {



 



                con=DBConnection.getConnection();
                String query="Delete from project where projectnumber="+pNo;
                stmt = con.createStatement();
                rs = stmt.executeQuery(query);
                status=true;
               
         }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        System.out.println(status);
        return status;
}

//-----------------------------------Task----------------------------//
public boolean addTask(Task t)
{
    boolean status = false;
    try
    {
  
        con=DBConnection.getConnection();
        String query="Insert into task values("+t.getDepartmentNumber()+","+t.getProjectNumber()+","+t.getTaskNumber()+",'"+t.getTaskName()+"','"+t.getStartDate()+"','"+t.getDueDate()+"','"+t.getPriority()+"','"+t.getStatus()+"',"+t.getPercentageComplete()+",'"+t.getConstraintType()+"','"+t.getConstraintDate()+"','"+t.getSummary()+"','"+t.getDateCreated()+"','"+t.getLastUpdated()+"')";
        System.out.println(query);
        stmt = con.createStatement();
        rs = stmt.executeQuery(query);
        status=true;
  
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    System.out.println(status);
    return status;
   
}

public boolean editTask(Task t) 
{
    boolean status=false;
    try
    {
        con=DBConnection.getConnection();
        String query= "Update task SET deptnumber='"+t.getDepartmentNumber()+"',projectNumber='"+t.getProjectNumber()+"',taskName='"+t.getTaskName()+"',startdate='"+t.getStartDate()+"',duedate='"+t.getDueDate()+"',priority='"+t.getPriority()+"',status='"+t.getStatus()+"',constraintType='"+t.getConstraintType()+"',constraintDate='"+t.getConstraintDate()+"',percentagecomplete='"+t.getPercentageComplete()+"',summary='"+t.getSummary()+"',dateCreated='"+t.getDateCreated()+"',lastUpdated='"+t.getLastUpdated()+"' where tasknumber='"+t.getTaskNumber()+"'";
        System.out.println(query);
        stmt = con.createStatement();
        rs = stmt.executeQuery(query);
        while(rs.next())
        {
        status=true;
        }
    }
     catch(Exception e)
    {
        e.printStackTrace();
    }
    System.out.println(status);
    return status;

 

}

public boolean deleteTask(int tNo) 
{
     boolean status = false;
        try
        {
                con=DBConnection.getConnection();
                String query="Delete from task where tasknumber="+tNo;
                stmt = con.createStatement();
                rs = stmt.executeQuery(query);
                status=true;
               
         }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        System.out.println(status);
        return status;
}

public Employee getEmployeeDetails(Employee employeeDetails) throws ClassNotFoundException, SQLException 
{
		Employee empDetails = new Employee();
		String query = "Select * from employee where username =? and password= ? and role=? ";
		con=DBConnection.getConnection();
		PreparedStatement preparedStatement = con.prepareStatement(query);
		preparedStatement.setString(1, employeeDetails.getEmpUserName());
		preparedStatement.setString(2, employeeDetails.getEmpPassword());
		preparedStatement.setString(3, employeeDetails.getRole());
		
		  ResultSet rs = preparedStatement.executeQuery();
          boolean more = rs.next();
          
          if(more)
          {
        	  empDetails.setEmpNumber(Integer.parseInt(rs.getString(1)));
        	  empDetails.setEmpSalutation(rs.getString(2));
        	  empDetails.setEmpFirstName(rs.getString(3));
        	  empDetails.setEmpLastName(rs.getString(4));
        	  empDetails.setEmpAddress(rs.getString(5));
        	  empDetails.setEmpCity(rs.getString(6));
        	  empDetails.setEmpState(rs.getString(7));
        	  empDetails.setEmpPincode(Integer.parseInt(rs.getString(8)));
        	  empDetails.setEmpOfficePhone(rs.getString(9));
        	  empDetails.setEmpMobileNumber(rs.getString(10));
        	  empDetails.setEmpEmail(rs.getString(11));
        	  empDetails.setEmpUserName(rs.getString(12));
        	  empDetails.setDeptNumber(Integer.parseInt(rs.getString(14)));
        	  empDetails.setDob(rs.getString(16));
        	  empDetails.setGender(rs.getString(17));
          }
          else
          {
        	  empDetails.setEmpFirstName("fail");
          }
	return empDetails;
}
public boolean checkvalidEmployeeDetails(String email, String mobileNumber, String password)
{
    boolean status=false;
    try
    {
        con=DBConnection.getConnection();
        String query="Update employee set password='"+password+"' where email='"+email+"' and mobile='"+mobileNumber+"'";
        System.out.println(query);
        stmt = con.createStatement();
        rs = stmt.executeQuery(query);
        while(rs.next())
        {
        status=true;
        }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    System.out.println(status);
    return status;
}

public boolean checkvalidUser(String username, String oldpassword, String newpassword) {
	// TODO Auto-generated method stub
	 boolean status=false;
	    try
	    {
	        con=DBConnection.getConnection();
	        String query="Update employee set password='"+newpassword+"' where username='"+username+"' and password='"+oldpassword+"'";
	        System.out.println(query);
	        stmt = con.createStatement();
	        rs = stmt.executeQuery(query);
	        while(rs.next())
	        {
	        status=true;
	        }
	    }
	    catch(Exception e)
	    {
	        e.printStackTrace();
	    }
	    System.out.println(status);
	    return status;
}

public boolean updateProfileEmployee(int empNumber, String salutation, String firstName, String lastName, String sex,
		String p_address, String city, String state, int pincode, String ophone, String mphone, String email,
		String dob) 
{
	 boolean status=false;
	    try
	    {
	        con=DBConnection.getConnection();
	        String query="Update employee SET SALUTATION='"+salutation+"' ,FIRSTNAME='"+firstName+"' ,LASTNAME='"+lastName+"',ADDRESS='"+p_address+"' ,CITY='"+city+"',PINCODE='"+pincode+"',MOBILE='"+mphone+"',DOB='"+dob+"' where empnumber="+empNumber;
	        System.out.println(query);
	        stmt = con.createStatement();
	        rs = stmt.executeQuery(query);
	        while(rs.next())
	        {
	        status=true;
	        }
	    }
	    catch(Exception e)
	    {
	        e.printStackTrace();
	    }
	    System.out.println(status);
	    return status;
}
}
	
