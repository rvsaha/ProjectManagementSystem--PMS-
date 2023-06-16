<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="bean.Employee" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
/* Style the header */
.header 
{
  background-color: #f1f1f1;
  padding: 20px;
  text-align: center;
}
</style>

</head>

<%@ include file="headpage.jsp"%>

<body style="background :black;">

<div class="header">
<%

Employee e=(Employee)session.getAttribute("userdetails");

%>

	<h1> Welcome <%=e.getEmpFirstName()%></h1>
  <h1>    Just Another Managaement System !!! </h1>
  <h2>    A subsidary of M.A.R.V.E.L </h1>
  <h4> Hover over the Navigation Bar for more Details .</h4>
   <img style="width:500px; height:500px;" src="./images/ironfront.jpg"> 
</div>

</body>
</html>