package service;

import java.sql.SQLException;

import bean.ContactUs;
//import bean.ContactUs;
import bean.Department;
import bean.Employee;
import bean.MasterPlan;
import bean.Project;
import bean.Task;
import dao.DAO;

public class Services {
	
		public Services(){}
		DAO dao=new DAO();
		private int percentageComplete;
		public boolean returnLogin(String username,String password,String role)
		{
			boolean status=false;
			Employee x=new Employee(username,password,role);
			if(dao.validate(x))
			{
				status=true;
			}
			System.out.println("service status :"+status);
			return status;
		}
		
		//--------------------------------------------Department---------------------------------
		
		public boolean addDepartment(int departmentNumber,String departmentName,String headDepartmentName)
		{
			Department d= new Department(departmentNumber,departmentName,headDepartmentName);
			if(dao.addDepartment(d))
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		public boolean deleteDepartment(int departmentNumber)
		{
			System.out.println("to dao");
			if(dao.deleteDepartment(departmentNumber))
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
		public boolean editDepartment(int departmentNumber,String departmentName,String headDepartmentName)
		{
			Department d= new Department(departmentNumber,departmentName,headDepartmentName);
			System.out.println("goes to dao");
			if(dao.editDepartment(d))
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		
		//--------------------Contact--------------------//
		
		public boolean addContactUs(String name,String email,String contactNumber ,String message)
        {
          
            ContactUs cont= new ContactUs(name,email,contactNumber,message);
            if(dao.addContactUs(cont))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
		
		//-------------------------------Employee-----------------------------------//
		
		public boolean addEmployee(int emplnumber, String salutation, String firstName, String lastName,
				String p_address, String city, String state, int pincode, String ophone, String mphone, String email,
				String empUsername, String password, int empdeptno, String role,String dob, String sex) 
		{
			Employee emp=new Employee(emplnumber, salutation, firstName, lastName, p_address, city, state, pincode, ophone, mphone, email, empUsername, password, empdeptno, role, dob, sex);
			if(dao.addEmployee(emp))
			{
				return true;
			}
			
			return false;
		}
		
		
		public boolean deleteEmployee(int empno) 
		{
			System.out.println("to dao");
			if(dao.deleteEmployee(empno))
			{
				return true;
			}
			
			return false;
		}
		
		//----------------------------------------Master Plan-----------------------------//
		
		public boolean addMasterPlan(int planNumber,String planDesc,String startDate,String endDate,String priority, String status,int percentagecomplete)
        {
          
            MasterPlan mp= new MasterPlan(planNumber,planDesc,startDate,endDate, priority,status,percentagecomplete);
            if(dao.addMasterPlan(mp))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public boolean deleteMasterPlan(int planNumber)
        {
           
            if(dao.deleteMasterPlan(planNumber))
            {
                return true;
            }                                                                       
            else
            {
                return false;
            }
        }
        public boolean editMasterPlan(int planNumber,String planDescription,String startDate,String endDate,String priority,String status, int percentagecomplete)
        {
            
            MasterPlan mp= new MasterPlan(planNumber,planDescription, startDate, endDate,priority,status,percentagecomplete);
            if(dao.editMasterPlan(mp))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        
        //-----------------------------------------------Project--------------------------------//

		public boolean addProject(int departnumber, int projectNumber, String projectLeader, String projectStartdate,
                String projectEnddate, int projectExpectedTime, String priority, String status,
                int projectPercentageComplete, String projectName, String projectDesc, int masterPlanNumber)
        {
           
            Project pro=new Project(departnumber, projectNumber, projectLeader, projectStartdate, projectEnddate, projectExpectedTime, priority, status, projectPercentageComplete, projectName, projectDesc, masterPlanNumber);
           
            if(dao.addProject(pro))
            {
                return true;
            }
            return false;
        }
        
		public boolean editProject(int departnumber, int projectNumber, String projectLeader, String projectStartdate,
				String projectEnddate, int projectExpectedTime, String priority, String status,
				int projectPercentageComplete, String projectName, String projectDesc, int masterPlanNumber) 
		{
			boolean status1=false;
			 Project pro=new Project(departnumber, projectNumber, projectLeader, projectStartdate, projectEnddate, projectExpectedTime, priority, status, projectPercentageComplete, projectName, projectDesc, masterPlanNumber);
	         if(dao.editProject(pro))
	         {
	        	 status1=true;
	         }
	         System.out.println(status1);
	        return status1;
		}
		
		public boolean deleteProject(int pNo)
        {
            if(dao.deleteProject(pNo))
            {
                return true;
            }
            return false;
        }
		
		//------------------------------------------Task-----------------------------------//
		 public boolean addTask(int deptNumber,int projectNumber,int taskNumber,String taskName,String startDate
	                ,String endDate,String priority,String status,int percentageCompleted,String constraintType,String constraintDate,String summary,
	                String dateCreated,String lastUpdated)
	        {
	            Task t= new Task(deptNumber,projectNumber,taskNumber,taskName,startDate,endDate,priority,status,percentageCompleted,constraintType,constraintDate,summary,dateCreated,lastUpdated);
	            if(dao.addTask(t))
	            {
	                return true;
	            }
	            else
	            {
	                return false;
	            }
	        }
		
		 public boolean editTask(int departmentNumber,int projectNumber,int taskNumber,String taskName,
                 String startDate,String dueDate,String priority,String status,String constraintType,String constraintDate,int percentageComplete,
                 String summary,String dateCreated,String lastUpdated)
         {
             boolean status1=false;
             Task t= new Task(departmentNumber,projectNumber,taskNumber,taskName,startDate,dueDate,priority,status,percentageComplete,constraintType,constraintDate,summary,dateCreated,lastUpdated);
	           if(dao.editTask(t))
              {
                  status1=true;
              }
              System.out.println(status1);
             return status1;
         }
		 
		 public boolean deleteTask(int taskNumber)
         {
          
             if(dao.deleteTask(taskNumber))
             {
                 return true;
             }                                                                     
             else
             {
                 return false;
             }
         }

		public Employee getEmployeeDetails(Employee employeeDetails) throws ClassNotFoundException, SQLException 
		{
			Employee e=dao.getEmployeeDetails(employeeDetails);
			return e;
		}
		
		public boolean checkValidEmployee(String email, String mobileNumber, String password)
        {
            if(dao.checkvalidEmployeeDetails(email,mobileNumber,password))
            {
                return true;
            }
           
            return false;
        }

		public boolean checkValidUser(String username, String oldpassword, String newpassword) {
			
			if(dao.checkvalidUser(username,oldpassword,newpassword))
            {
                return true;
            }
           
			
			return false;
		}

		public boolean updateEmployeeProfile(int empNumber, String salutation, String firstName, String lastName,
				String sex, String p_address, String city, String state, int pincode, String ophone, String mphone,
				String email, String dob) 
		{
			if(dao.updateProfileEmployee( empNumber,  salutation,  firstName,  lastName,
				 sex,  p_address,  city,  state,  pincode,  ophone,  mphone,
				 email,  dob))
			{
				return true;
			}
			
			return false;
		}


     
     
   
    
}

