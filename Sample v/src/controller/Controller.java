package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Employee;
import oracle.net.aso.e;
import oracle.net.aso.p;
import service.Services;

public class Controller extends HttpServlet 
{
	PrintWriter out;
	Services s=new Services();
	HttpSession session;
	public void init(ServletConfig config) throws ServletException
	{	
		super.init(config);
	}
 
	public void destroy() 
	{
 
	}
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
        response.setHeader("Cache-Control", "no-cache, no-store");
        response.setHeader("Pragma", "no-cache");
        HttpSession session = request.getSession(false);
        session.setAttribute("userdetails", "");
        request.setAttribute("uname", "");
        session.invalidate();
        request.getRequestDispatcher("LoginPage.html").forward(request, response);
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,NumberFormatException,IOException 
	{
		
		out=resp.getWriter();
		resp.setContentType("text/html"); 
		
//		HttpSession session=req.getSession();
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//		SimpleDateFormat sdf1=new SimpleDateFormat("dd-MM-yyyy");
//		Services adminService=new Services();
			String trigerFrom=null;
			trigerFrom = req.getParameter("button");
			//String trigerFrom2=req.getParameter("dropdown");
			System.out.println(trigerFrom);
			if(trigerFrom.equals("login"))
			{
				try 
				{
					
					login(req,resp,out);
				} 
				catch (ClassNotFoundException | SQLException e) {
					
					e.printStackTrace();
				}
			}
			
			if(trigerFrom.equals("addDepartment"))
			{
				addDepartment(req, resp, out);
			}
			
			if(trigerFrom.equals("editDepartment"))
			{
				modifyDepartment(req, resp, out);
			}
			
			if(trigerFrom.equals("deleteDepartment"))
			{
				deletedept(req, resp,out);
			}
			
			if(trigerFrom.equals("manageDepartment")) 
			{
				System.out.println("in manage department");
			}
			
			if(trigerFrom.equals("Add Row"))
			{
				addDepartment(req, resp, out);
			}
			
			if(trigerFrom.equals("addEmployee")) 
			{
				addEmployee(req, resp, out);
			}
			
			if(trigerFrom.equals("deleteEmployee"))
			{
				deleteEmployee(req,resp,out);
			}
			
			if(trigerFrom.equals("addMasterPlan"))
			{
				addMasterPlan(req, resp, out);
			}
			
			if(trigerFrom.equals("deleteMasterPlan"))
			{
				deleteMasterPlan(req, resp, out);
			}
			
			if(trigerFrom.equals("editMasterPlan"))
			{
				editMasterPlan(req, resp, out);
			}
			
			if(trigerFrom.equals("contactUs"))
	        {
	              contactPage(req,resp,out);
	        }
			
			if(trigerFrom.equals("addProject"))
			{
				addProject(req,resp,out);
			}
			
			if(trigerFrom.equals("editProject"))
			{
				editProject(req,resp,out);
			}
			
			if(trigerFrom.equals("deleteProject"))
			{
				deleteProject(req, resp, out);
				
			}
			
			if(trigerFrom.equals("addTask"))
			{
				addTask(req, resp, out);
			}
			
			if(trigerFrom.equals("editTask"))
			{
				editTask(req, resp, out);
			}
			
			if(trigerFrom.equals("deleteTask"))
			{
				deleteTask(req, resp, out);
			}

			if(trigerFrom.equals("forgotPassword"))
			{
				forgetPasswordCheck(req, resp, out);
			}
			
			if(trigerFrom.equals("updatePassword"))
			{
				updatePassword(req, resp, out);
			}
			
			if(trigerFrom.equals("updateProfileEmployee"))
			{
				updateProfileEmp(req,resp,out);
			}
	}

	
	
	//---------------------------------Login-------------------------//

	public void login(HttpServletRequest req, HttpServletResponse resp,PrintWriter out) throws ServletException ,NumberFormatException,IOException, ClassNotFoundException, SQLException
	{
		System.out.println("HI its Login part");
        String username =req.getParameter("uname");
        String password = req.getParameter("psw");
        String role = req.getParameter("dropdown");
        
        Employee employeeDetails = new Employee();
        employeeDetails.setEmpUserName(username);
        employeeDetails.setEmpPassword(password);
        employeeDetails.setRole(role);
        
        Employee employeeFullDetails = s.getEmployeeDetails(employeeDetails);
       
        System.out.println(username+" "+password+" "+role);
       if(!(employeeFullDetails.getEmpFirstName().equals("fail")))
       {
            if(role.equalsIgnoreCase("admin"))
            {
                System.out.println("Validated");
                session=req.getSession();
                session.setAttribute("userdetails", employeeFullDetails);
                req.setAttribute("uname", username);
                req.setAttribute("password", password);
                session.setMaxInactiveInterval(36000);
                req.getRequestDispatcher("homepage.jsp").forward(req, resp);
           }
            else if(role.equalsIgnoreCase("employee"))
            {
            	session=req.getSession();
                session.setAttribute("userdetails", employeeFullDetails);
                req.setAttribute("uname", username);
                req.setAttribute("password", password);
                session.setMaxInactiveInterval(36000);
                req.getRequestDispatcher("/employeeHomepagenew.jsp").forward(req, resp);
            }
       }
	
        else 
		{
          System.out.println("Sorry UserName or Password Error!");
          req.getRequestDispatcher("LoginPage.html").include(req, resp);
          out.println("<script>alert(\"WRONG USERNAME OR PASSWORD\");</script>");
      	}
	}
	
	//-------------------------------------Department-----------------------------//
	
	public void addDepartment(HttpServletRequest req, HttpServletResponse resp,PrintWriter out) throws ServletException ,NumberFormatException,IOException
	{
		System.out.println("Hi its add department part");
		String deptNumber = req.getParameter("deptno");
		System.out.println(deptNumber);
		int departNumber=Integer.parseInt(deptNumber);
		String departName=req.getParameter("deptname");
		String departHeadName=req.getParameter("hodname");
		System.out.println(departNumber+" "+departName+" "+departHeadName);
		
		if(s.addDepartment(departNumber,departName,departHeadName))
		{
			req.getRequestDispatcher("managedept.jsp").include(req, resp);
			 out.println("<script>alert(\"Department added successfully\");</script>");
		}
		
		else if(!s.addDepartment(departNumber,departName,departHeadName))
		{
			req.getRequestDispatcher("managedept.jsp").include(req, resp);
	        out.println("<script>alert(\"Department already present, try adding a new one\");</script>");
		}
	}
	
	public void modifyDepartment(HttpServletRequest req, HttpServletResponse resp,PrintWriter out) throws ServletException ,NumberFormatException,IOException
	{
		System.out.println("Hi its modify department part");
		String deptNumber = req.getParameter("deptno");
		System.out.println(deptNumber);
		int departNumber=Integer.parseInt(deptNumber);
		String departName=req.getParameter("deptname");
		String departHeadName=req.getParameter("hodname");
		System.out.println(departNumber+" "+departName+" "+departHeadName);
		if(s.editDepartment(departNumber,departName,departHeadName))
		{
			System.out.println("values modified");
			resp.sendRedirect("managedept.jsp");
			 out.println("<script>alert(\"Department modified successfully\");</script>");
		}
		else if(!s.editDepartment(departNumber,departName,departHeadName))
		{
			req.getRequestDispatcher("managedept.jsp").include(req, resp);
	        out.println("<script>alert(\"Unable to modify\");</script>");
		}
	}

	public void deletedept(HttpServletRequest req,HttpServletResponse resp,PrintWriter out) throws IOException, ServletException 
	{
		String deptNumber = req.getParameter("deptno");
		int deptno=Integer.parseInt(deptNumber);
		System.out.println(deptno);
		if(s.deleteDepartment(deptno)) 
		{
			resp.sendRedirect("managedept.jsp");
			out.println("<script>alert(\"Department "+deptno+"deleted successfully\");</script>");
		}
		
		else if(!s.deleteDepartment(deptno))
		{
			resp.sendRedirect("managedept.jsp");
			out.println("<script>alert(\"unable to delete department\");</script>");
			
		}
	}
	
	//---------------------------Employee------------------------------------------//
	
	public void addEmployee(HttpServletRequest req, HttpServletResponse resp,PrintWriter out) throws ServletException ,NumberFormatException,IOException
	{
        System.out.println("Hi its add department part");
        String empNumber = req.getParameter("empnumber");
        int emplnumber=Integer.parseInt(empNumber);
        System.out.println(empNumber);
        String role="employee";
        String firstName=req.getParameter("firstname");
        String LastName=req.getParameter("lastname");
        String salutation=req.getParameter("dropdown");
        String sex=req.getParameter("sex");
        String p_address=req.getParameter("personaladdress");
        String city=req.getParameter("city");
        String state=req.getParameter("state");
        int pincode=Integer.parseInt(req.getParameter("pincode"));
        String ophone=req.getParameter("ophone");
        String mphone=req.getParameter("mphone");
        String email=req.getParameter("email");
        String dob=req.getParameter("dob");
        String empUsername=req.getParameter("username");
        int empdeptno=Integer.parseInt(req.getParameter("deptnumber"));
        
        if(s.addEmployee(emplnumber,salutation,firstName,LastName,p_address,city,state,pincode,ophone,mphone,email,empUsername,empUsername,empdeptno,role,dob,sex))
        {
        	System.out.println("values added");
        	 req.getRequestDispatcher("ManageEmployee.jsp").include(req, resp);
			out.println("<script>alert(\"Employee added successfully\");</script>");
        }

        else if(!s.addEmployee(emplnumber,salutation,firstName,LastName,p_address,city,state,pincode,ophone,mphone,email,empUsername,empUsername,empdeptno,role,dob,sex))
        {
        	//System.out.println("values added");
        	 req.getRequestDispatcher("ManageEmployee.jsp").include(req, resp);
			out.println("<script>alert(\"Employee already present in database\");</script>");
        }
	}

	void deleteEmployee(HttpServletRequest req, HttpServletResponse resp, PrintWriter out2) throws ServletException, IOException 
	{
		System.out.println("its delete employee");
		int empno = Integer.parseInt(req.getParameter("empno"));
		System.out.println(empno);
		
		if(s.deleteEmployee(empno))
		{
			 req.getRequestDispatcher("ManageEmployee.jsp").include(req, resp);
			out.println("<script>alert(\"Employee deleted successfully\");</script>");
		}
		
		else if(!s.deleteEmployee(empno))
		{
			req.getRequestDispatcher("ManageEmployee.jsp").include(req, resp);
			out.println("<script>alert(\"Unable to delete employee\");</script>");
		}
	}
	
	//----------------------------------------------Project----------------------------//
	
	public void addProject(HttpServletRequest req, HttpServletResponse resp, PrintWriter out) throws IOException, ServletException
    {
        System.out.println("In add project part");
        int projectNumber = Integer.parseInt(req.getParameter("projectNumber"));
        String projectName = req.getParameter("projectName");
        String projectDesc = req.getParameter("description");
        int masterPlanNumber = Integer.parseInt(req.getParameter("masterPlan"));
        int departnumber=Integer.parseInt(req.getParameter("deptno"));
        String projectLeader = req.getParameter("projectLeader");
        String projectStartdate = req.getParameter("start_date");
        String projectEnddate = req.getParameter("end_date");
        int projectExpectedTime = Integer.parseInt(req.getParameter("time"));
        int projectPercentageComplete = Integer.parseInt(req.getParameter("percentageComplete"));
        String priority = req.getParameter("priority");
        String status = req.getParameter("status");
       
        System.out.println(projectNumber+" "+projectName+" "+projectDesc+" "+masterPlanNumber+" "+projectLeader+" "+projectStartdate+" "+projectEnddate+" "+projectExpectedTime+" "+projectPercentageComplete+" "+priority+" "+status);
       
        if(s.addProject(departnumber,projectNumber,projectLeader,projectStartdate,projectEnddate,projectExpectedTime,priority,status,projectPercentageComplete,projectName,projectDesc,masterPlanNumber))
        {
              out.println("<script>alert(\"Project Added\");</script>");   
              req.getRequestDispatcher("manageProject.jsp").include(req, resp);       
        }
        else if(!s.addProject(departnumber,projectNumber,projectLeader,projectStartdate,projectEnddate,projectExpectedTime,priority,status,projectPercentageComplete,projectName,projectDesc,masterPlanNumber))
       {                                                                                                                                                                                               
              out.println("<script>alert(\"Project not Added\");</script>");                                                                                                                                
              req.getRequestDispatcher("manageProject.jsp").include(req, resp);                                                                                                                              
       }                                                                                                                                                                                               
    }
	
	public void editProject(HttpServletRequest req, HttpServletResponse resp, PrintWriter out) throws ServletException, IOException 
	{
		
		System.out.println("Hi its edit project part");
		int projectNumber = Integer.parseInt(req.getParameter("projectNumber"));
        String projectName = req.getParameter("projectName");
        String projectDesc = req.getParameter("description");
        System.out.println(req.getParameter("masterPlan"));
        int masterPlanNumber = Integer.parseInt(req.getParameter("masterPlan"));
        int departnumber=Integer.parseInt(req.getParameter("deptno"));
        String projectLeader = req.getParameter("projectLeader");
        String projectStartdate = req.getParameter("start_date");
        String projectEnddate = req.getParameter("end_date");
        int projectExpectedTime = Integer.parseInt(req.getParameter("time"));
        int projectPercentageComplete = Integer.parseInt(req.getParameter("percentageComplete"));
        String priority = req.getParameter("priorityedit");
        String status = req.getParameter("statusedit");
       
        System.out.println(projectNumber+" "+projectName+" "+projectDesc+" "+masterPlanNumber+" "+projectLeader+" "+projectStartdate+" "+projectEnddate+" "+projectExpectedTime+" "+projectPercentageComplete+" "+priority+" "+status);
       
        if(s.editProject(departnumber,projectNumber,projectLeader,projectStartdate,projectEnddate,projectExpectedTime,priority,status,projectPercentageComplete,projectName,projectDesc,masterPlanNumber))
        {
        	 out.println("<script>alert(\"Project "+projectName+" modified successfully\");</script>");     
        	 req.getRequestDispatcher("manageProject.jsp").include(req, resp);  
            
        }
        
        else if(!(s.editProject(departnumber,projectNumber,projectLeader,projectStartdate,projectEnddate,projectExpectedTime,priority,status,projectPercentageComplete,projectName,projectDesc,masterPlanNumber)))
        {                                                                                                                                                                                               
              out.println("<script>alert(\"Error\");</script>");                                                                                                                                
                                                                                                                                         
        }        
	}
	
	public void deleteProject(HttpServletRequest req,HttpServletResponse resp,PrintWriter out) throws IOException, ServletException
    {
        String projectNo = req.getParameter("projectNumber");
        System.out.println();
        int pNo=Integer.parseInt(projectNo);
        System.out.println(pNo);
        if(s.deleteProject(pNo))
        {
            resp.sendRedirect("manageProject.jsp");
             out.println("<script>alert(\"Project "+pNo+"deleted successfully\");</script>");
        }
      
        else if(!s.deleteProject(pNo))
        {
            out.println("<script>alert(\"Unable to delete Project \");</script>");                                                                                                                                
            req.getRequestDispatcher("manageProject.jsp").include(req, resp); 
        }
    }
	
	//-----------------------------------master plan-----------------------//
	public void addMasterPlan(HttpServletRequest req, HttpServletResponse resp,PrintWriter out) throws ServletException ,NumberFormatException,IOException
    {
        System.out.println("Hi its add masterplan part");
        String plnNumber = req.getParameter("planNumber");
        System.out.println(plnNumber);
        int planNumber=Integer.parseInt(plnNumber);
        String startDate =req.getParameter("startDate");
        String endDate =req.getParameter("endDate");
        String planDesc=req.getParameter("description");
        String priority=req.getParameter("priorityStatus");
        String status=req.getParameter("taskStatus");
        String percentcompleted=req.getParameter("percentageCompleted");
        int percentagecompleted=Integer.parseInt(percentcompleted);
        System.out.println(planNumber+" "+startDate+" "+endDate+" "+planDesc+" "+priority+" "+status+" "+percentagecompleted);
        
        if(s.addMasterPlan(planNumber,planDesc,startDate, endDate,priority, status, percentagecompleted))
        {
            System.out.println("values added");
            req.getRequestDispatcher("ManageMasterplan.jsp").include(req, resp);
             out.println("<script>alert(\"MasterPlan "+plnNumber +" added successfully\");</script>");
        }
        
        else if(!s.addMasterPlan(planNumber,planDesc,startDate, endDate,priority, status, percentagecompleted))
        {
            req.getRequestDispatcher("ManageMasterplan.jsp").include(req, resp);
            out.println("<script>alert(\"the masterplan is already present, try adding a new one.\");</script>");
           // resp.sendRedirect("ManageMasterPlan.jsp");
        }
    }
    
    public void editMasterPlan(HttpServletRequest req, HttpServletResponse resp,PrintWriter out) throws ServletException ,NumberFormatException,IOException
    {
        System.out.println("Hi its edit masterplan part");
        String plnNumber = req.getParameter("planNumber");
        int planNumber=Integer.parseInt(plnNumber);
        String startDate =req.getParameter("startDate");
        
        String endDate =req.getParameter("endDate");
         
        String planDesc=req.getParameter("description");
        String priority=req.getParameter("priorityStatus");
        String status=req.getParameter("taskStatus");
        String percentcompleted=req.getParameter("percentageCompleted");
        int percentagecompleted=Integer.parseInt(percentcompleted);
        System.out.println(planNumber+" "+startDate+" "+endDate+" "+planDesc+" "+priority+" "+status+" "+percentagecompleted);
        
        if(s.editMasterPlan(planNumber,planDesc,endDate,startDate,priority,status,percentagecompleted))
        {
            System.out.println("values modified");
            req.getRequestDispatcher("ManageMasterplan.jsp").include(req, resp);
             out.println("<script>alert(\"Master Plan is modified successfully\");</script>");
        }
        else if(!s.editMasterPlan(planNumber,planDesc,endDate,startDate,priority,status,percentagecompleted))
        {
            req.getRequestDispatcher("ManageMasterplan.jsp").include(req, resp);
            out.println("<script>alert(\"Unable to modify the Master Plan\");</script>");
        }
    }

 

    public void deleteMasterPlan(HttpServletRequest req,HttpServletResponse resp,PrintWriter out) throws IOException, ServletException 
    {
        System.out.println("Hi its edit masterplan part");
        String plnNumber = req.getParameter("planNumber");
        int planNumber=Integer.parseInt(plnNumber);
        
        System.out.println(planNumber);
        if(s.deleteMasterPlan(planNumber)) 
        {
            req.getRequestDispatcher("ManageMasterplan.jsp").include(req, resp);
             out.println("<script>alert(\"MasterPlan "+planNumber+" deleted successfully\");</script>");
        }
        
        else if(!s.deleteMasterPlan(planNumber))
        {
            req.getRequestDispatcher("ManageMasterplan.jsp").include(req, resp);
            out.println("<script>alert(\"A MasterPlan  exists in that department \");</script>");
        }
    }
    
    //---------------------------------Contact page--------------------------------//
    
    void contactPage(HttpServletRequest req, HttpServletResponse resp, PrintWriter out2) throws IOException, ServletException
    {
        System.out.println("HI its contact part");
        String name=req.getParameter("user_name");
        String email = req.getParameter("user_email");
        String phone = req.getParameter("user_phone");
        String message = req.getParameter("user_bio");
      
        System.out.println(name+" "+email+" "+phone+" "+message);
        if(s.addContactUs(name, email, phone, message))
        {
            out.println("<script>alert(\"Thanks for reaching out !!\");</script>");
            req.getRequestDispatcher("homepage.jsp").include(req, resp);
        }
      
        else if(!s.addContactUs(name, email, phone, message))
        {
            out.println("<script>alert(\"Something is missing..\");</script>");
              req.getRequestDispatcher("homepage.jsp").include(req, resp);
        }
      
    }
    
    //---------------------------TASK--------------------------------//
    void addTask(HttpServletRequest req, HttpServletResponse resp, PrintWriter out2) throws IOException, ServletException
    {
        System.out.println("HI its add task part");
        int departnum=Integer.parseInt(req.getParameter("department"));
        int projnum=Integer.parseInt(req.getParameter("Project"));
        int taskid=Integer.parseInt(req.getParameter("taskId"));
        String taskname=req.getParameter("taskName");
        String startdate=req.getParameter("startDate");
        String duedate=req.getParameter("endDate");
        String pstatus=req.getParameter("priorityStatus");
        String tstatus=req.getParameter("taskStatus");
        String taskconstraint=req.getParameter("constrainttype");
        String taskconstraintDate = req.getParameter("constraintDate");
        String summary=req.getParameter("taskSummary");
        String datecreated=req.getParameter("dateCreated");
        String lastupdated=req.getParameter("lastUpdated");
        String percentagecompleted=req.getParameter("percentageCompleted");
        int p_complete=Integer.parseInt(percentagecompleted);
        System.out.println(departnum+" "+projnum+" "+startdate+" "+duedate+" "+pstatus+" "+pstatus+" "+summary);
        if(s.addTask(departnum, projnum, taskid, taskname, startdate, duedate, pstatus, tstatus, p_complete, taskconstraint,taskconstraintDate,summary, datecreated, lastupdated))
        {
            out.println("<script>alert(\"Task "+taskname+" added\");</script>");
            req.getRequestDispatcher("/ManageTasks.jsp").include(req, resp);
        }
        else if(!s.addTask(departnum, projnum, taskid, taskname, startdate, duedate, pstatus, tstatus, p_complete, taskconstraint, startdate, summary, datecreated, lastupdated))
        {
            out.println("<script>alert(\"Task is already present!! \");</script>");
          req.getRequestDispatcher("/ManageTasks.jsp").include(req, resp);
        }
      
    }
	
    public void editTask(HttpServletRequest req, HttpServletResponse resp, PrintWriter out) throws ServletException, IOException
    {
        System.out.println("Hi its edit task part");
        System.out.println("number"+req.getParameter("department"));
        int deptNumber = Integer.parseInt(req.getParameter("department"));
        System.out.println(deptNumber);
        int projectNumber = Integer.parseInt(req.getParameter("Project"));
        int taskNumber = Integer.parseInt(req.getParameter("taskId"));
        System.out.println(taskNumber);
        String taskName = req.getParameter("taskName");
        String startDate = req.getParameter("startDate");
        String endDate = req.getParameter("endDate");
        String priority = req.getParameter("priorityStatus");
        String status = req.getParameter("taskStatus");
        String constraintType = req.getParameter("constrainttype");
        String constraintDate = req.getParameter("constraintDate");
        int percentageCompleted = Integer.parseInt(req.getParameter("percentageCompleted"));
        String summary = req.getParameter("taskSummary");
        String dateCreated = req.getParameter("dateCreated");
        String lastUpdated = req.getParameter("lastUpdated");
     
        System.out.println(deptNumber+" "+projectNumber+" "+taskNumber+" "+taskName+" "+startDate+" "+endDate+" "+priority+" "+status+" "+constraintType+" "+constraintDate+" "+percentageCompleted+" "+summary+" "+dateCreated+" "+lastUpdated);
     
        if(s.editTask(deptNumber,projectNumber,taskNumber,taskName,startDate,endDate,priority,status,constraintType,constraintDate,percentageCompleted,summary,dateCreated,lastUpdated))
        {
             out.println("<script>alert(\"Task name:  "+taskName+" task is modified successfully\");</script>");   
             req.getRequestDispatcher("/ManageTasks.jsp").include(req, resp);
          
        }
      
        else if(!(s.editTask(deptNumber,projectNumber,taskNumber,taskName,startDate,endDate,priority,status,constraintType,constraintDate,percentageCompleted,summary,dateCreated,lastUpdated)))
        {                                                                                                                                                                                             
              out.println("<script>alert(\"Error\");</script>");       
              req.getRequestDispatcher("/ManageTasks.jsp").include(req, resp);
                                                                                                                                       
        }      
    }
    
    public void deleteTask(HttpServletRequest req,HttpServletResponse resp,PrintWriter out) throws IOException, ServletException
    {
        System.out.println("Hi its delete task part");
        String taskNo = req.getParameter("taskId");
        System.out.println(taskNo);
        int tNo=Integer.parseInt(taskNo);
      
        System.out.println(tNo);
        if(s.deleteTask(tNo))
        {
            req.getRequestDispatcher("/ManageTasks.jsp").include(req, resp);
             out.println("<script>alert(\"Task "+tNo+" deleted successfully\");</script>");
        }
      
        else if(!s.deleteTask(tNo))
        {
            req.getRequestDispatcher("/ManageTasks.jsp").include(req, resp);
            out.println("<script>alert(\"Task  exists in that department \");</script>");
        }
    }
    public void forgetPasswordCheck(HttpServletRequest req, HttpServletResponse resp, PrintWriter out) throws ServletException, IOException
    {
        String email = req.getParameter("mail");
        String mobileNumber = req.getParameter("mobile");
        String password = req.getParameter("newpassword");
       
        if(s.checkValidEmployee(email,mobileNumber,password))
        {
        	
            System.out.println("its working");
            out.println("<script>alert(\"Password changed\");</script>");
            req.getRequestDispatcher("/LoginPage.html").include(req, resp);
            System.out.println("its good");
        }
        else
        {
            out.println("<script>alert(\"NOT VALID DETAILS\");</script>");
            req.getRequestDispatcher("/LoginPage.html").include(req, resp);
        }
       
    }
    
    private void updatePassword(HttpServletRequest req, HttpServletResponse resp, PrintWriter out) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	  String oldpassword = req.getParameter("password");
          String newpassword = req.getParameter("newpassword");

          
          Employee e=(Employee)session.getAttribute("userdetails");
          String username=e.getEmpUserName();
          System.out.println(username);
          if(s.checkValidUser(username,oldpassword,newpassword))
          {
          	
              System.out.println("its working");
              
              resp.setHeader("Cache-Control", "no-cache, no-store");
              resp.setHeader("Pragma", "no-cache");
              HttpSession session = req.getSession(false);
              session.setAttribute("userdetails", "");
              req.setAttribute("uname", "");
              session.invalidate();
              out.println("<script>alert(\"Password changed\");</script>");
              req.getRequestDispatcher("LoginPage.html").forward(req, resp);
              
              System.out.println("its good");
          }
          else
          {
              out.println("<script>alert(\"NOT VALID DETAILS\");</script>");
              req.getRequestDispatcher("/LoginPage.html").include(req, resp);
          }
         
	}
    
    void updateProfileEmp(HttpServletRequest req, HttpServletResponse resp, PrintWriter out2) throws ServletException, IOException 
	{
		System.out.println("inside update profile");
		int empNumber=Integer.parseInt(req.getParameter("empnumber"));
		String salutation=req.getParameter("salutation");
		String firstName=req.getParameter("firstname");
        String LastName=req.getParameter("lastname");
        String sex=req.getParameter("sex");
        String p_address=req.getParameter("personaladdress");
        String city=req.getParameter("city");
        String state=req.getParameter("state");
        int pincode=Integer.parseInt(req.getParameter("pincode"));
        String ophone=req.getParameter("ophone");
        String mphone=req.getParameter("mphone");
        String email=req.getParameter("email");
        String dob=req.getParameter("dob");
        
        System.out.println(empNumber+" "+salutation+" "+firstName+" "+LastName+" "+sex+" "+p_address+" "+city+" "+state+" "+pincode+" "+ophone+" "+mphone+" "+email+" "+dob);
        
        if(s.updateEmployeeProfile(empNumber,salutation,firstName,LastName,sex,p_address,city,state,pincode,ophone,mphone,email,dob))
        {
        	  out.println("<script>alert(\"Crendentials Updated\");</script>");
              req.getRequestDispatcher("/employeeHomepagenew.jsp").include(req, resp);
        	
        }
        else
        {
        	out.println("<script>alert(\"Crendentials Cannot be Updated\");</script>");
            req.getRequestDispatcher("/employeeHomepagenew.jsp").include(req, resp);
        }
        
        
	}

    
	
	

}
