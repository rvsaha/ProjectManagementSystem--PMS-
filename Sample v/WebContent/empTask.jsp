<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="bean.*" %>
    
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" > 

  <link href="styles/tasks.css" rel="stylesheet">
  <script src="js/tasks.js"></script>

</head>
<%@ include file="empheadpage.jsp"%>
<body> 

<div class="container-table-pms">
<h1 style="padding: 5px; text-align: center;">Manage Tasks</h1>
<hr>
<%

Employee e=(Employee)session.getAttribute("userdetails");
int deptnumber=e.getDeptNumber();

try {
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection connect=DriverManager.getConnection("jdbc:oracle:thin:@10.200.20.110:1521/orcl.wipro.com","team3","team3");
Statement stmt =connect.createStatement();
ResultSet res=stmt.executeQuery("Select * from task where deptnumber="+deptnumber+" order by tasknumber"); 
if(res.next()==false)
{
%>
	<h2 style="padding: 5px; text-align: center;">NO Task Assigned</h2>

	<%
}
else
{
%>
<table align="center" border = "1" width = "100%" style="width:95%" class="table">
<tr class="success">
		<th class="pointer" align="center" width="4%">Dept No.</th>
		<th class="pointer" align="center" width="4%">Prj No.</th>
		<th class="pointer" align="center" width="4%">Task No.</th>
		<th class="pointer" align="center" width="4%">Task Name</th>
        <th class="pointer" align="center" width="4%">Start Date</th>
        <th class="pointer" align="center" width="4%">Due Date</th>
        <th class="pointer" align="center" width="4%">Priority</th>
        <th class="pointer" align="center" width="4%">Status</th>
        <th class="pointer" align="center" width="4%">% complete</th>
        <th class="pointer" align="center" width="4%">Constraint Type</th>
        <th class="pointer" align="center" width="4%">Constraint Date</th>
        <th class="pointer" align="center" width="4%">Summary</th>
        <th class="pointer" align="center" width="4%">Date Created</th>
        <th class="pointer" align="center" width="4%">Last Updated</th>
       
</tr>
   
<%
while(res.next())
{
%>	

        <tr>
        <td class="info" width="4%" name="deptno"><%=res.getString(1)%></td>
        <td  class="warning" width="4%" name="projectid"><%=res.getString(2)%></td>
        <td  class="info" width="4%" name="taskid"><%=res.getString(3)%></td>
        <td  class="warning" width="5%" name="taskname"><%=res.getString(4)%></td>
        <td  class="info" width="9%" name="start_date"><%=res.getString(5)%></td>
        <td  class="warning" width="9%" name="end_date"><%=res.getString(6)%></td>
        <td class="info"  width="4%" name="priority"><%=res.getString(7)%></td>
        <td  class="warning" width="4%" name="status"><%=res.getString(8)%></td>
        <td  class="info" width="4%" name="percentagecomplete"><%=res.getString(9)+ " %"%></td>
         <td  class="warning" width="10%" name="constraintType"><%=res.getString(10)%></td>
        <td  class="info" width="8%" name="constraintDate"><%=res.getString(11)%></td>
         
        <td  class="warning" width="10%" name="tasksummary"><%=res.getString(12)%></td>
        <td  class="info" width="9%" name="datecreated"><%=res.getString(13)%></td>
		<td  class="warning" width="9%" name="dateupdated"><%=res.getString(14)%></td>
 
        </tr>
 	
  <%
 }
}
}
catch(Exception e1)
{
	e1.printStackTrace();
}
%>

 </table>

