 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.*" %>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>M.A.R.V.E.L.S</title>
   
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link href="styles\headpage.css" rel="stylesheet">
  
    <script type="text/javascript" src="js\employeform.js"></script>

<link type="text/css" rel="stylesheet" href="styles\employeform.css"/>
<link type="text/css" rel="stylesheet" href="styles\masterplanform.css"/>
<link type="text/css" rel="stylesheet" href="styles\projectform.css"/>

  <link href="styles/tasks.css" rel="stylesheet">
  <script src="js/tasks.js"></script>
 
 <script type="text/javascript">
history.pushState(null, null, location.href);
window.onpopstate = function () {
    history.go(1);
};
</script>
 
 <script>
 
//Validating Empty Field
 function check_empty() {
 if (document.getElementById('name').value == "" || document.getElementById('email').value == "" || document.getElementById('msg').value == "") {
 alert("Fill All Fields !");
 } else {
 document.getElementById('form').submit();
 alert("Form Submitted Successfully...");
 }
 }
 //Function To Display Popup
 
 function div_show() {
 document.getElementById('abc').style.display = "block";
 }

 //Function to Hide Popup
 function div_hide(){
 document.getElementById('abc').style.display = "none";
 }
 
 
 </script>
 
 
 
<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.myprofile {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
</style>

<style>
body {
  margin: 0;
}

/* Style the header */
.header {
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}
</style>

<!-- <style>
p.ex1 {
  margin-top: 22px;
}
</style> -->



<style>
.menubar {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

.dropdwn {
  float: left;
}

 




.dropdwn a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

 .dropdwn a:hover, .dropdwn:hover .dropbtn {
  background-color: #ff4100c9;    !important 
} 
.dropdwn a:hover:not(.myprofile) {
  background-color: #4CAF50;
}

.header a.myprofile {
  background-color: dodgerblue;
  color: white;
}


.myprofile {
  background-color: #4CAF50;
}

.dropdwn {
  display: inline-block;
}

.dropdwn-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdwn-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdwn-content a:hover {background-color: #f1f1f1;}

.dropdwn:hover .dropdwn-content {
  display: block;
}



</style>

<style>

/* Style the header */
.header 
{
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}
</style>

<style >
  .pointer {cursor: pointer;}
</style>

</head>
<body>
<%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        if (session.getAttribute("userdetails")==null) 
        {
            response.sendRedirect("LoginPage.html");
        } 
        else 
        {
%>
<div class="header"  style=" padding: 0px 0px; ">
  <a href="homepage.jsp" class="logo"><img src="./images/jamslogo.png"  style="width:90px;height:40px; padding: 0px 0px;"> </a>
  <div class="header-right">
    <a  href="homepage.jsp"> <i class="fa fa-fw fa-home"></i> Home</a>
    <a href="contactus.jsp"> <i class="fa fa-fw fa-envelope"></i>Contact</a>
    <a href="Controller"> <i class="fa fa-fw fa-user"></i>Sign Out</a>
  </div>
</div>



<ul class="menubar">
  <li class="dropdwn">
    <a href="javascript:void(0)" class="dropbtn dropbtnmenu">Departments</a>
    <div class="dropdwn-content">
    <a class="pointer"  onclick="div_show()">Add New Department</a>
      <a href="managedept.jsp">Manage Departments</a>
      
    </div>
  </li>
  
  <li class="dropdwn">
    <a href="javascript:void(0)" class="dropbtn dropbtnmenu">Employees</a>
    <div class="dropdwn-content">
      <a class="pointer"  onclick="document.getElementById('addemp').style.display='block';">Add New Employee</a>
     <a href="ManageEmployee.jsp">Manage Employee</a>
      
    </div>
  </li>
  <li class="dropdwn">
    <a href="javascript:void(0)" class="dropbtn dropbtnmenu">Master Plans</a>
    <div class="dropdwn-content">
    <a class="pointer"  onclick="document.getElementById('addmp').style.display='block';"  >Add Master Plan</a>
      <a href="ManageMasterplan.jsp" name="managemp" value="managemp" >Manage Master Plans</a>
      
    </div>
  </li>
  <li class="dropdwn">
    <a href="javascript:void(0)" class="dropbtn dropbtnmenu">Projects</a>
    <div class="dropdwn-content">
      <a class="pointer" onclick="document.getElementById('addproject').style.display='block';" >Add Project</a>
      <a href="manageProject.jsp" name="manageproject" value="manageproject" >Manage Project</a>
    </div>
  </li>
  <li class="dropdwn">
    <a href="javascript:void(0)" class="dropbtn dropbtnmenu">Tasks</a>
    <div class="dropdwn-content">
       <a class="pointer" onclick="document.getElementById('addtask').style.display='block';" >Add Task</a>
       <a href="ManageTasks.jsp" name="managetask" value="managetask" >Manage Task</a>
 
    </div>
  </li>
  
  <!-- <li style="float:right"><a  href="#about"> My Name </a></li> -->
  <li style="float:right"><a class="myprofile dropbtn " href="profile.jsp"> <i class="fa fa-fw fa-user"></i> My Profile </a></li>
  <li style="float:right;color:black;">|</li>
  <li style="float:right"><a class="myprofile dropbtn " href="holiday.jsp"> <i class="fa fa-fw fa-calendar"></i> Holiday </a></li>
   <li style="float:right;color:black;">|</li>
  
</ul>




<!-- Add Department Popup Div Starts Here---------------------------------------------------------------------- -->

<div id="abc">
<!-- Popup Div Starts Here -->
<div id="popupContact">
<!-- Contact Us Form -->
<form action="Controller" id="form" method="post" name="form">
<img id="close" src="closepop.png" onclick ="div_hide()">
<h2>Add Department</h2>
<hr>

  <table>
    <tr>
      <td style="font-size: medium;"><b>Dept No:</b></td>
      <td > <input id="deptno" name="deptno" placeholder="department number" type="text" pattern="[1-9][0-9]{0,}" title="Department Number" required> </td>
    </tr>

    <tr>
      <td style="font-size: medium;"><b>Dept Name:</b></td>
      <td > <input  id="deptname" name="deptname" placeholder="Type Dept Name" type="text" pattern="[A-Za-z]{1,}" title="Department name" required> </td>
    </tr>

    <tr>
      <td style="font-size: medium;"><b>Head of Dept:</b></td>
      <td > <input id="hodname" name="hodname" placeholder="Type Head of Dept" type="text" pattern="[A-Za-z]{1,}"  title="HOD name" required> </td>
    </tr>

  </table>


<br>
<button href="javascript:%20check_empty()" id="submit" type="submit" name="button" value="addDepartment">Save & Submit</button>

</form>
</div>
<!-- Popup Div Ends Here -->
</div>
<!-- Display Popup Button -->


<!-- Add Employee Popup Div Starts Here---------------------------------------------------------------------- -->


<div id="addemp">
<div  id="popupContact">

  <form name="EmployeeForm"  action="Controller" method="post" id="form" onsubmit="return checkPassword()">
    
    <img id="close" src="closepop.png" style="background-color: #f4f7f8" onclick="document.getElementById('addemp').style.display='none';" alt="Close">
    <h3 style="background-color:none;"><center>New Employee Form</center></h3>
    <br>
  <fieldset>
  <label for="empnumber">Employee ID:</label>

  <input type=number min="1" max="500" name="empnumber" id="empnumber" placeholder="Enter employee id"  title="Employee Number" required>

  <label for="dropdown">Salutation:

  </label>
     <select id = "select" name="dropdown" required >
     <option value="" selected disabled>-- select --</option>
       <option value = "Mr">Mr</option>
       <option value = "Ms">Ms</option>
       <option value = "Dr">Dr</option>
       <option value = "Mrs">Mrs</option>
    
     </select>

  <label for="firstname">First Name:</label>

  <input type="text" name="firstname" id="firstname" placeholder="Enter first name" size="30" pattern="[A-Za-z]{1,}" title="First Name" required>
 
 <label for="lastname">Last Name:</label>

  <input type="text" name="lastname" id="lastname" placeholder="Enter last name"size="30" pattern="[A-Za-z]{1,}" Title="Last name" required>

  <label for="sex">Gender:</label>
 
  <input type="radio" name="sex" value="male"  required>Male</input>

  <input type="radio" name="sex" value="Female" >Female</input>

  <input type="radio" name="sex" value="LGBTQ" >Others</input>
  </fieldset>
  <fieldset>
  <label for="personaladdress">Personal Address:</label>

  <textarea type="text" name="personaladdress" id="personaladdress" placeholder="Enter personal address" size="50" title="Personal Address" required="required">
  </textarea>
  
  <label for="city">City:</label>

  <input type="text" name="city" id="city" placeholder="Enter city"size="30" pattern="[A-Za-z]{1,}" title="City" required>

  <label for="state">State:</label>

  <input type="text" name="state" id="state" placeholder="Enter state" size="30" pattern="[A-Za-z]{1,}" title="State" required>

  <label for="pincode">PIN Code:</label>

  <input type="number" name="pincode" id="pincode" placeholder="Enter pincode" min="100000" max="999999"  title="Pincode should be of 6 Digits.Eg: 581400" required>

  <label for="ophone">Office Phone Number:</label>

  <input type="tel" pattern="[1-9][0-9]{9}" placeholder="Example: 9876543210" name="ophone" id="ophone" placeholder="Enter office phone no" size="30" title="Enter a 10 digit mobile number" required>

  <label for="mphone">Mobile Number :</label>

  <input type="tel" pattern="[1-9][0-9]{9}" placeholder="Example: 9876543210" name="mphone" id="mphone" placeholder="Enter mobile phone no" size="30"title="Enter a 10 digit mobile number" required>

  <label for="email">Email:</label>

  <input type="email" name="email" id="email" placeholder="Enter email" size="30" title="Email Address" required>

  <label for="dob">DOB:</label>

  <input type="date" name="dob" id="dob" placeholder="Enter date of birth" size="30" title="date of birth" required>
  
  <label for="username">User Name:

  </label>
  <input type="text" name="username" id="username" placeholder="Enter a username" size="30" onkeyup="change()" title="username" required>

  <label for="password">Password:

  </label>
    <input type="password" name="password" id="password" placeholder="Enter a password" size="30" title="password" readonly required> 
  <label for="deptnumber">Select department: </label>
      <select type="text" name="deptnumber" title="Department number" required>
      <option value="" selected disabled >-- select --</option>
      <%

System.out.println("jdbc connection");
try {
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection connect=DriverManager.getConnection("jdbc:oracle:thin:@10.200.20.110:1521/orcl.wipro.com","team3","team3");
Statement stmt =connect.createStatement();
ResultSet res=stmt.executeQuery("Select deptnumber,deptname from department order by deptnumber");


while(res.next())
{
%>	
	<option value="<%=res.getString(1)%>"><%=res.getString(1)+" : "+res.getString(2)%>	</option>
     
  <%
 }
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
      	  
<br>
</select>
  
  
  <!--  -->
 
  <button id="submitemp" type="submit" name="button" value="addEmployee" >Submit</button>

  </fieldset>
 
  </form>
  </div>

</div> 
<!-- Add employee ends here  -------------------------------------------------------------------------------------->

<!-- Add Master Plan Popup Div Starts Here---------------------------------------------------------------------- -->

<div id="addmp"> <!-- mp= master plan -->
<!-- Popup Div Starts Here -->
<div id="popupContact">
<!-- Contact Us Form -->
<img id="close" src="closepop.png" style="background-color: #f4f7f8" onclick="document.getElementById('addmp').style.display='none';" alt="Close">



 <form action="Controller" method="post" id="form" name="form">
      
        <h1>Add Master Plan</h1>
        <br>
        <fieldset>
          <legend><span class="number">1</span>Basic Plan Info</legend>
          <label for="planNumber">Plan Number:</label>
          <input type="text" pattern="[1-9][0-9]{0,}" id="planNumber" name="planNumber" placeholder="Enter plan number"  required> 
          <label>Start Date:</label>
          <input type="date" id="startDate" placeholder="Start Date" name="startDate" title="Press on Calender Icon" required>
          <label>End Date</label>
          <input type="date" id="endDate" placeholder="End Date" name="endDate" title="Press on Calender icon" required>
       <script>
	         var startDate = document.getElementById('startDate');
			var endDate = document.getElementById('endDate');
			startDate.addEventListener('change', function() {
	    	if (startDate.value)
	        	endDate.min = startDate.value;
				}, false);
			endDate.addEventLiseter('change', function() {
	    	if (endDate.value)
	        	startDate.max = endDate.value;
				}, false);
		</script>
         
          <legend><span class="number">2</span>Plan profile</legend>
          <label for="description">Description:</label>
          <textarea id="description" name="description" placeholder="Enter plan description" title="Description of Master plan" required="required"></textarea>
      
        <label for="priorityStatus">Priority Status:</label>
        <select id="priorityStatus" name="priorityStatus" required>
          <option value="" selected disabled>-- select --</option>
            <option value="high">High</option>
            <option value="normal">Normal</option>
            <option value="low">Low</option>
            
        </select>
        
         <label for="taskStatus">Task Status:</label>
        <select id="taskStatus" name="taskStatus" required>
          <option value="" selected disabled>-- select --</option>
            <option value="active">Active</option>
            <option value="proposed">Proposed</option>
            <option value="onHold">On Hold</option>
            <option value="completed">Completed</option>
            
        </select>
        <label>Percentage Completed</label>
		<input type="number" min="0" max="100" id="percentageCompleted" name="percentageCompleted" value="percentageCompleted" title="percentage of project completed" required>
        </fieldset>
        <button id="submitmp" type="submit" name="button" value= "addMasterPlan" style="background-color: green; color: white; font-size: 18px;">Submit</button>
      </form>


</div>
<!-- Popup Div Ends Here -->
</div>
<!-- Display Popup Button -->


<!-- Add projects --------------------------------------------------------------------------------------------------------------->
<div id="addproject" >
 <div id="popupContact" style="left:45%;top:10%">
  <form name='Controller' action="Controller" id="form" method="post" style="min-width:480px" onSubmit="return formValidation();">
  <img id="close" src="closepop.png" style="background-color: #f4f7f8" onclick="document.getElementById('addproject').style.display='none';" alt="Close">
    
    <h3 style="text-align:center; color: black"><b>Add Project</b></h3>
  <fieldset >
    <label  for="projectNumber">Project Number:</label>
      <input type="text" pattern="[1-9][0-9]{0,}" name="projectNumber" placeholder="Enter Project number" title="project number" required>
  <br>
    <label for="projectName">Project Name</label>
      <input type="text" name="projectName" size="50" placeholder="Enter Project name" title="project name" required>
  <br>
    <label for="description" >Description</label>
      <textarea type="textarea" id="bio" name="description" placeholder="Describe the project" title="add project description" required="required" ></textarea>
  <br>  
    <label for="masterPlan">Select masterplan for this project</label>
    <select name="masterPlan" required>
    <option value="" selected disabled >-- select --</option>
    <%

System.out.println("jdbc connection");
try {
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection connect=DriverManager.getConnection("jdbc:oracle:thin:@10.200.20.110:1521/orcl.wipro.com","team3","team3");
Statement stmt =connect.createStatement();
ResultSet res=stmt.executeQuery("Select masterplannumber,masterplandesc from masterplan order by masterplannumber");
while(res.next())
{
%>	
	<option value="<%=res.getString(1)%>"><%=res.getString(1)+" : "+res.getString(2)%></option>
  <%
 }
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
    
    </select>
     
      <br>
       <br>  
    <label for="deptno" >Select department for this project</label>
      <select type="number" name="deptno" required>
      <option value="" selected disabled >-- select --</option>
      <%

System.out.println("jdbc connection");
try {
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection connect=DriverManager.getConnection("jdbc:oracle:thin:@10.200.20.110:1521/orcl.wipro.com","team3","team3");
Statement stmt =connect.createStatement();
ResultSet res=stmt.executeQuery("Select deptnumber, deptname from department order by deptnumber");


while(res.next())
{
%>	
	<option value="<%=res.getString(1)%>"><%=res.getString(1)+" : "+res.getString(2)%></option>
     
  <%
 }
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
      	  
<br>
</select>
  <label>Start Date:</label>
          <input type="date" id="start_date" placeholder="Start Date" name="start_date" title="Press on Calender Icon" required>
          <label>End Date</label>
          <input type="date" id="end_date" placeholder="End Date" name="end_date" title="Press on Calender icon" required>
       <script>
         var start_date = document.getElementById('start_date');
var end_date = document.getElementById('end_date');
start_date.addEventListener('change', function() {
    if (start_date.value)
        end_date.min = start_date.value;
}, false);
end_date.addEventLiseter('change', function() {
    if (end_date.value)
        start_date.max = end_date.value;
}, false);
</script>
   <label>Time required</label>
          <input type="number" min="1" max="500" id="time" value="" name="time" placeholder="Time in hrs" title="time required" required><label></label>
   <label>% complete</label>
     <input type="number" min="1" max="100" id="percentageComplete" value="" name="percentageComplete" placeholder="Percentage completed" title="precentage completed" required>
  <label for="projectLeader">Enter Project Leader</label>
<input type="text" name="projectLeader" pattern="[A-Za-z]{1,}" placeholder="Enter project lead name" required>
<label for="priority">Priority Status:</label>
        <select id="priority" name="priority" required>
          <option  value="" selected disabled >-- select --</option>
            <option value="high">High</option>
            <option value="normal">Normal</option>
            <option value="low">Low</option>
             </select>
<br>
<label for="status">Status:</label>
        <select id="status" name="status" required>
        <option  value="" selected disabled >-- select --</option>
            <option value="active">Active</option>
            <option value="hold">On hold</option>
            <option value="completed">Completed</option>     
            <option value="proposed">Proposed</option>
        </select>
<br>        
<button id="submitmp" type="submit" name="button" value="addProject" style="background-color: green; font-size: 16px;color: white;" >Add Project</button>
</fieldset>

</form>

</div>
</div>

<!-- End of add projects ---------------------------------------------------------------------------------------------->


<!-- start of add tasks ---------------------------------------------------------------------------------------------->

<div id="addtask">
<!-- Popup Div Starts Here -->
<div id="popupContact">
<!-- Contact Us Form -->
<form action="Controller" id="form" method="post" name="form">
<img id="close" src="closepop.png" onclick="document.getElementById('addtask').style.display='none';">
        <h2>Add Task</h2>
        <br>
        <fieldset>
           <legend><span class="number"> 1 </span> Basic Task Info</legend>
          <label for="department">Department:</label>
        <select id="department" name="department" onchange="projectOption(this.value);" required>
        <option value=""  disabled  selected>-- select --</option>
      
      
      <!-- Start of dynamic options; change the project select id ----------------------------------------------------------------------------->
      <%
  
System.out.println("jdbc connection");
      ResultSet res1;
      try 
        {
        Class.forName("oracle.jdbc.driver.OracleDriver");

 

        Connection connect=DriverManager.getConnection("jdbc:oracle:thin:@10.200.20.110:1521/orcl.wipro.com","team3","team3");
        Statement stmt =connect.createStatement();
        Statement stmt2 =connect.createStatement();
        ResultSet res=stmt.executeQuery(" select distinct department.deptnumber,department.deptname from department inner join project on department.deptnumber=project.deptnumber");
        ArrayList<ArrayList<String>> projectnumber=new ArrayList<ArrayList<String>>();
        ArrayList<ArrayList<String>> projectname=new ArrayList<ArrayList<String>>();
        ArrayList<String> deptnums=new ArrayList<String>();
        ArrayList<String> num=new ArrayList<String>();
        ArrayList<String> name=new ArrayList<String>();
        while(res.next())
        {
            deptnums.add(res.getString(1));
            %>
            <option value="<%=res.getString(1)%>"><%=res.getString(2)%></option>
            <%
            num=new ArrayList<String>();
            name=new ArrayList<String>();
            res1=stmt2.executeQuery("Select projectnumber,projectname from project where  deptnumber="+res.getString(1));
            
                    while(res1.next())
                    {
                        num.add(res1.getString(1));
                        name.add(res1.getString(2));
                    }
                    projectname.add(name);    
                    projectnumber.add(num);    
         }
        %>
        
        <script>
        
        function projectOption(a)
        {
            var x=0,ind=-1;
            var deptnumbers = [<% for (int i = 0; i < deptnums.size(); i++) { %>"<%= deptnums.get(i) %>"<%= i + 1 < deptnums.size() ? ",":"" %><% } %>];
            // deptnumbers only for JS
            for(x=0;x<deptnumbers.length;x++){
                if(a==deptnumbers[x]){
                    ind=x;    
                    break;
                }
            }
            var selectElement = document.getElementById('ProjectAdd');
            if(ind!=-1){
                var projectnumbers = [<% for (int i = 0; i < projectnumber.size(); i++) { %>"<%= projectnumber.get(i) %>"<%= i  < projectnumber.size() ? ",":"" %><% } %>];
                var projectnames = [<% for (int i = 0; i < projectname.size(); i++) { %>"<%= projectname.get(i) %>"<%= i  < projectname.size() ? ",":"" %><% } %>];
                // projectnumbers only for JS
                // projectnames only for JS
                var x1=0,flag=0;
                var removeopt=document.querySelector('#ProjectAdd').options;
                while (removeopt.length > 1) {
                    document.querySelector( '#ProjectAdd' ).remove(1);
                }
                var pjnames=(projectnames[ind].substring(1,projectnames[ind].length-1)).split(', ');
                var pjnums=(projectnumbers[ind].substring(1,projectnumbers[ind].length-1)).split(', ');
                for(x1=0;x1<pjnames.length;x1++)
                {
                     var valnum=pjnums[x1];
                     var valname=pjnames[x1];
                     var opt=document.createElement("option");
                      opt.value=valnum;
                     opt.innerHTML=valname;
                    selectElement.append(opt);
            } 
                
            }
            
        }
        
        </script>
        <!-- End of dynamic options ------------------------------------------------------------------------------------------------------>
        
        
        <%
        }
catch(Exception e)
{
    e.printStackTrace();
}

%>
 </select>       
 			<label for="project">Project:</label>
           <select id="ProjectAdd" name="Project" required>
                 <option value=""  disabled  selected>-- select --</option>
      
            
        </select>
        </fieldset>
        
         <fieldset>
          <legend><span class="number">2</span> Task Details</legend>
          <label for="taskId">Task ID:</label>
         <input type="text" name="taskId" pattern="[1-9][0-9]{0,}" required>
       
        <label for="taskName">Task Name:</label>
         <textarea id="taskName" name="taskName" pattern="[A-Za-z]{1,}" placeholder="Enter Task Name" required="required"></textarea>
        
          <label>Start Date:</label>
          <input type="Date" id="startDates" value="startDates" name="startDates" required>
          <label>End Date</label>
          <input type="Date" id="endDates" value="endDates" name="endDates" required>
<script>
         var startDates = document.getElementById('startDates');
var endDates = document.getElementById('endDates');
startDates.addEventListener('change', function() {
    if (startDates.value)
        endDates.min = startDates.value;
}, false);
endDates.addEventLiseter('change', function() {
    if (endDates.value)
        startDates.max = endDates.value;
}, false);
</script>

           <label for="job">Priority Status:</label>
        <select id="priorityStatus" name="priorityStatus" required>
          <option value=""  disabled  selected>-- select --</option>
            <option value="high">High</option>
            <option value="normal">Normal</option>
            <option value="low">Low</option>
            
        </select>

       
           <label for="job">Task Status:</label>
        <select id="taskStatus" name="taskStatus" required>
          <option value=""  disabled  selected>-- select --</option>
            <option value="active">Active</option>
            <option value="onHold">On-Hold</option>
            <option value="proposed">Proposed</option>
            <option value="completed">Completed</option>
            
        </select>


        
        </fieldset>
        <fieldset>
              <legend><span class="number"> 3 </span> Task Constraints</legend>
           <label>Constraint Type:</label>
           <select id="constraintType" name="constrainttype" required>
          <option value=""  disabled  selected>-- select --</option>
            <option value="finish no later than">Finish no later than </option>
            <option value="Finish no earlier than">Finish no earlier than</option>
            <option value="Finish before">Finish before</option>
            
        </select>
        <label>Constraint Date:</label>
          <input type="Date" id="constraintDate" value="constraintDate" name="constraintDate" required>
          <label>Percentage Completed</label>
          <input type="number" min="0" max="100" paceholder="percentage completed" name="percentageCompleted" required>
       
          <legend>Task Summary :</legend>
           
         <textarea id="taskSummary" name="taskSummary" required="required"></textarea>
           <label>Date Created:</label>
          <input type="Date" id="dateCreated" value="dateCreated" name="dateCreated" required>
            <label>Last Updated:</label>
          <input type="Date" id="lastUpdated" value="lastUpdated" name="lastUpdated" required>
        
        <button id="submitmp" type="submit" name="button" value="addTask" style="background-color: green; color: white; font-size: 18px;">Add Task</button>
      </form>
      
</div>
<!-- Popup Div Ends Here -->
</div>
<!-- Display Popup Button -->
<%} %>




    


<!-- end of add tasks ---------------------------------------------------------------------------------------------->







</body>
</html>