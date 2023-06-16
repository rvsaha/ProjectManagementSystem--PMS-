<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="bean.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
   -->
  <!-- <link rel="stylesheet" href="elements.css">
  <script src="my_js.js"></script> -->
  


  <link href="styles\headpage.css" rel="stylesheet">
  	<!-- <script src="js\headpage.js"></script> -->
  
  
  
 




</head>

<%@ include file="empheadpage.jsp"%>

<body>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>




<%

Employee e=(Employee)session.getAttribute("userdetails");
int deptnumber=e.getDeptNumber();

try {
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection connect=DriverManager.getConnection("jdbc:oracle:thin:@10.200.20.110:1521/orcl.wipro.com","team3","team3");
Statement stmt =connect.createStatement();
Statement stmt1 =connect.createStatement();

ResultSet res=stmt.executeQuery("Select empnumber,SALUTATION,FIRSTNAME,LASTNAME,EMAIL from employee where deptnumber="+deptnumber);
ResultSet res1=stmt1.executeQuery("Select DEPTNAME,HODDEPT from department where deptnumber="+deptnumber);

%>
 <%
	while(res1.next())
	{
	%>	
		<h1 style="padding: 5px; text-align: center;">Department: <%=" "+res1.getString(1)%></h1>
		<h3 style="padding: 5px; text-align: center;">HOD: <%=" "+res1.getString(2)%></h3>
		
	<%
	}
%> 
<hr>
<div class="container">
<table align="center" border = "1"  width = "70%" style="width:95%"  class="table">
<thead >
<tr class="success">
   <th align="center" width="10%" title="Department number">Employee no.</th>
   <th align="center" width="25%">Name</th>
   <th align="center" width="25%">Email</th>
   </tr>
</thead>




<% 
while(res.next())
{
	System.out.println("inside loop");
%>	
        
        <tr >
        <td align="center" class="info" width="10%" name="empno"><%=res.getString(1)%></td>
        <td  class="warning" width="25%" name="fullname"><%=res.getString(2)+". "+res.getString(3)+" "+res.getString(4)%></td>
        <td  class="info" width="25%" name="email"><%=res.getString(5)%></td>
        
       
        
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