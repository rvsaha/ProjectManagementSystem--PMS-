<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="bean.Employee" %>
    
<!DOCTYPE>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
 
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

  <link href="styles\headpage.css" rel="stylesheet">
    <link href="styles\employeeformupdate.css" rel="stylesheet">
  
 <script>
 function div_show_updateemp(){
	 
	 var x=(document.getElementById('updateProfileButton').value).split("|=>");
	 document.getElementById('empnumber').value=x[0];
	 document.getElementById('salutation').value=x[1];
	 document.getElementById('firstname').value=x[2];
	 document.getElementById('lastname').value=x[3];
	 if(x[4]=='male'){
		 document.EmployeeForm.sex[0].checked=true;
	 }
	 else if(x[4]=='Female'){
		 document.EmployeeForm.sex[1].checked=true;
		 
	 }
	 else{
		 document.EmployeeForm.sex[2].checked=true;
	 }
	
	 document.getElementById('personaladdress').value=x[5];
	 document.getElementById('city').value=x[6];
	 document.getElementById('state').value=x[7];
	 document.getElementById('pincode').value=x[8];
	 document.getElementById('ophone').value=x[9];
	 document.getElementById('mphone').value=x[10];
	 document.getElementById('email').value=x[11];
	 document.getElementById('dob').value=x[12];
	 
	 document.getElementById('editProfileEmployee').style.display='block';
 }
 
 </script>


</head>
<%@ include file="empheadpage.jsp"%>
<body>
<%
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setDateHeader("Expires", 0);
        if (session.getAttribute("userdetails")==null) 
        {
        	request.getRequestDispatcher("LoginPage.html");
        } 
        else 
        {
%>

<div class="container-table-pms">
<h1 style="padding: 5px; text-align: center;">My Profile</h1>
<hr>
<%
Employee e=(Employee)session.getAttribute("userdetails");
%>
<table align="center" border = "1" width = "100%" style="width:90%" class="table" style="background-color: beige;">
 <tr>
    <th width="25%">Employee Number:</th>
   <td class="warning" width="75%" name="empno"><%=e.getEmpNumber()%></td>
  </tr>
  <tr>
    <th width="25%">Name </th>
     <td width="75%" name="salutation" style="display:none;"><%=e.getEmpSalutation()%></td>
            <td width="75%" name="firstname" style="display:none;"><%=e.getEmpFirstName()%></td>
            <td width="75%" name="lastname" style="display:none;"><%=e.getEmpLastName()%></td>
        <td class="info"  width="75%" name="fullname" ><%=e.getEmpSalutation()+". "+e.getEmpFirstName()+" "+e.getEmpLastName()%></td>
  </tr>
  
  <tr>
    <th width="25%"> Phone Number </th>  
    <td class="info" width="75%" name="ophone"><%=e.getEmpOfficePhone()%></td>
  </tr>
  
  <tr>
    <th width="25%"> Email Id :</th>
    <td class="warning" width="75%" name="email"><%=e.getEmpEmail()%></td>  
    </tr>
  <tr>
    <th width="25%"> Department Number</th>
    <td class="warning" width="75%" name="deptno"><%=e.getDeptNumber()%></td>
  </tr> 
   <tr>
    <th width="25%"> Birth Date</th>
 <td class="warning" width="75%" name="dob"><%=e.getDob()%></td>
  </tr>
  <tr>
    <th width="25%"> Gender </th>
   <td class="info" width="75%" name="gender"><%=e.getGender()%></td>
  </tr>
  <tr style="height: 90px;">
    <th width="25%">Address:</th> 
   <td class="warning" width="75%" name="address"><%=e.getEmpAddress()+", "+e.getEmpCity()+", "+e.getEmpState()+","+e.getEmpPincode()%></td>
            
  </tr>
   

 
       

 </table>
 
 <button id="updateProfileButton" type="submit" name="button" value="<%=e.getEmpNumber()+"|=>"+e.getEmpSalutation()+"|=>"+e.getEmpFirstName()+"|=>"+e.getEmpLastName()+"|=>"+e.getGender()+"|=>"+e.getEmpAddress()+"|=>"+e.getEmpCity()+"|=>"+e.getEmpState()+"|=>"+e.getEmpPincode()+"|=>"+e.getEmpOfficePhone()+"|=>"+e.getEmpMobileNumber()+"|=>"+e.getEmpEmail()+"|=>"+e.getDob() %>" onclick=" div_show_updateemp();" style="border:0px;float:right;margin-right:5%;padding:15px;background-color:green;color:white;" ><b>Update Profile</b></button>
</div>


<!-- Display Popup Button -->

<%} %>



<!-- Edit profile(Employee) Popup Div Starts Here---------------------------------------------------------------------- -->


<div id="editProfileEmployee">
<div  id="popupContact">

  <form id="form" name="EmployeeForm"  action="Controller" method="post"  onsubmit="confirm('Confirm details?');">
    
    <img id="close" src="closepop.png" style="background-color: #f4f7f8" onclick="document.getElementById('editProfileEmployee').style.display='none';" alt="Close">
    <h3 style="background-color:none;"><center>Update Profile</center></h3>
    <br>
  <fieldset>
  <label for="empnumber">Employee ID:</label>

  <input id="empnumber" type=number min="1" max="500" name="empnumber"  placeholder="Enter employee id"  title="Employee Number" required readonly>

  <label for="salutation">Salutation:

  </label>
     <select id = "salutation" name="salutation" required >
     <option value="" selected disabled>-- select --</option>
       <option value = "Mr">Mr</option>
       <option value = "Ms">Ms</option>
       <option value = "Dr">Dr</option>
       <option value = "Mrs">Mrs</option>
    
     </select>

  <label for="firstname">First Name:</label>

  <input id="firstname" type="text" name="firstname"  placeholder="Enter first name" size="30" pattern="[A-Za-z].{1,}" title="First Name with no spaces" required>
 
 <label for="lastname">Last Name:</label>

  <input id="lastname" type="text" name="lastname"  placeholder="Enter last name"size="30" pattern="[A-Za-z].{1,}" Title="Last name with no spaces" required>

  <label id="sex" for="sex">Gender:</label>
 
  <input type="radio" name="sex" value="male"  required>Male</input>

  <input type="radio" name="sex" value="Female" >Female</input>

  <input type="radio" name="sex" value="LGBTQ" >Others</input>
  </fieldset>
  <fieldset>
  <label for="personaladdress">Personal Address:</label>

  <textarea id="personaladdress" type="text" name="personaladdress"  placeholder="Enter personal address" size="50" title="Personal Address" required="required">
  </textarea>
  
  <label for="city">City:</label>

  <input id="city" type="text" name="city"  placeholder="Enter city"size="30" pattern="[A-Za-z].{1,}" title="City" required>

  <label for="state">State:</label>

  <input id="state" type="text" name="state"  placeholder="Enter state" size="30" pattern="[A-Za-z].{1,}" title="State" required>

  <label for="pincode">PIN Code:</label>

  <input id="pincode" type="number" name="pincode"  placeholder="Enter pincode" min="100000" max="999999" title="Pincode should be of 6 Digits.Eg: 581400" required>

  <label for="ophone">Office Phone Number:</label>

  <input type="tel" pattern="[1-9][0-9]{9}" placeholder="Example: 9876543210" name="ophone" id="ophone" placeholder="Enter office phone no" size="30" title="Enter a 10 digit mobile number" readonly required>

  <label for="mphone">Mobile Number :</label>

  <input id="mphone" type="tel" pattern="[1-9][0-9]{9}" placeholder="Example: 9876543210" name="mphone"  placeholder="Enter mobile phone no" size="30"title="Enter a 10 digit mobile number" required>

  <label for="email">Email:</label>

  <input id="email" type="email" name="email"  placeholder="Enter email" size="30" title="Email Address" required readonly>

  <label for="dob">DOB:</label>

  <input id="dob" type="date" name="dob"  placeholder="Enter date of birth" size="30" title="date of birth" required >
  
  

  
  

 
  <button id="submitemp" type="submit" name="button" value="updateProfileEmployee" >Update</button>

  </fieldset>
 
  </form>
  </div>

</div> 
<!-- Edit profile ends here  -------------------------------------------------------------------------------->
</body>
</html>
