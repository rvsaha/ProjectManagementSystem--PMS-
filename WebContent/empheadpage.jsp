 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>M.A.R.V.E.L.S</title>
   
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Bootstrap Core CSS -->
    
    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Back button -->
	<script type="text/javascript">
		history.pushState(null, null, location.href);
		window.onpopstate = function () {
   		history.go(1);
		};
		
	
	</script>
<!-- Back button -->

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



<body >

<span id="fakeClick"></span>
<div class="header"  style=" padding: 0px 0px; ">

  <a href="employeeHomepagenew.jsp" class="logo"><img src="./images/jamslogo.png"  style="width:90px;height:40px; padding: 0px 0px;"></a>
  <div class="header-right">
    <a  href="employeeHomepagenew.jsp"> <i class="fa fa-fw fa-home"></i> Home</a>
    <a href="empcontactus.jsp"> <i class="fa fa-fw fa-envelope"></i>Contact</a>
    <a href="Controller"> <i class="fa fa-fw fa-user"></i>Sign Out</a>
  </div>
</div>



<ul class="menubar">
  <li class="dropdwn">
    <a href="empDept.jsp" class="dropbtn dropbtnmenu">Departments</a>
  </li>
  <li class="dropdwn">
    <a href="empProject.jsp" class="dropbtn dropbtnmenu">Projects</a>
  </li>
  <li class="dropdwn">
    <a href="empTask.jsp" class="dropbtn dropbtnmenu">Tasks</a>
  </li>
  
  <!-- <li style="float:right"><a  href="#about"> My Name </a></li> -->
  
  <li style="float:right"><a class="myprofile dropbtn " href="empprofile.jsp"> <i class="fa fa-fw fa-user"></i> My Profile </a></li>
   <li style="float:right"><a  href="#about">|</a></li>
  <li style="float:right"><a class="myprofile dropbtn " href="empholiday.jsp"> <i class="fa fa-fw fa-calendar"></i> Holiday </a></li>
	<li style="float:right"><a  href="#about">|</a></li>
  <li style="float:right"><a class="myprofile dropbtn " href="changePasswordEmp.jsp"> <i class="fa fa-fw fa-lock"></i> Change Password </a></li>


</ul>

<%} %>
</body>
</html>