<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="bean.*" %>
    
    
<!DOCTYPE>

<html>
<head>
	

   <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  
  <link href="styles\editproject.css" rel="stylesheet">
  <link href="styles\deleteproject.css" rel="stylesheet">


</head>
 
<%@ include file="empheadpage.jsp"%>

<body>
	
<div class="container-table-pms">
<h1 style="padding: 5px; text-align: center;">Manage Projects</h1>
<hr>
<%
Employee e=(Employee)session.getAttribute("userdetails");
int deptnumber=e.getDeptNumber();

try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection connect=DriverManager.getConnection("jdbc:oracle:thin:@10.200.20.110:1521/orcl.wipro.com","team3","team3");
	Statement stmt = connect.createStatement();
	ResultSet res=stmt.executeQuery("Select * from project where deptnumber="+deptnumber+" order by projectnumber");
	
	%>
	<table align="center" border = "1" width = "100%" style="width:90%" class="table">
	<thead >
	<tr  class="success">
	   <th class="pointer" align="center" title="Project Number" width="4%">Proj No.</th>
	   <th class="pointer" align="center" width="15%">Project Name</th>
	           <th class="pointer" align="center" width="15%">Project Desc.</th>
	   
	   <th class="pointer" align="center" width="15%">Project Leader</th>
	    <th class="pointer" align="center" width="12%">Start Date</th>
	     <th class="pointer" align="center" width="12%">End Date</th>
	    <th class="pointer" align="center" width="6%">Expected Duration</th>
	     <th class="pointer" align="center" width="6%">Priority</th>
	       <th class="pointer" align="center" width="6%">Status</th>
	         <th class="pointer" align="center" width="12%">Percentage complete</th>
	         <th class="pointer" align="center" title="Department Number" width="4%">Dept No.</th>
	   <th class="pointer" align="center" title="Master Plan Number" width="4%">M_P No.</th>
	          
	            
	          
	            
	</tr>
	</thead>
	
	
	<% 
	while(res.next())
	{
	%>	
	        <tr>
	        <td class="info" width="4%" name="projectnumber"><%=res.getString(2)%></td>
	        <td class="warning" width="15%" name="projectName"><%=res.getString(10)%></td>
	        <td class="info" width="15%" name="projectdesc"><%=res.getString(11)%></td>
	        <td class="warning" width="15%" name="leader"><%=res.getString(3)%></td>
	        <td class="info" width="12%" name="startDate"><%=res.getString(4)%></td>
	        <td class="warning" width="12%" name="endDate"><%=res.getString(5)%></td>
	        <td class="info" width="6%" name="duration"><%=res.getString(6)+ " Hrs"%></td>
	        <td class="warning" width="6%" name="priority"><%=res.getString(7)%></td>
	        <td class="info" width="6%" name="status"><%=res.getString(8)%></td>
	        <td class="warning" width="12%" name="percentagecomplete"><%=res.getString(9) + " %"%></td>
	        <td class="info" width="4%" name="deptnumber"><%=res.getString(1)%></td>
	        <td class="warning" width="4%" name="masterplannumber"><%=res.getString(12)%></td>  
	        
	 	</tr>
	  <%
	}
	
}
catch(Exception e1)
{
	e1.printStackTrace();
}
%>


  </table>
</div>
</body>
</html>