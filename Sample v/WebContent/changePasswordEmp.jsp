<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>

<head>
	
	<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<style type="text/css">
	
.pass_show{position: relative} 

.pass_show .ptxt { 

position: absolute; 

top: 50%; 

right: 10px; 

z-index: 1; 

color: #f36c01; 

margin-top: -10px; 

cursor: pointer; 

transition: .3s ease all; 

} 

.pass_show .ptxt:hover{color: #333333;} 

#updatePassword {
text-decoration:none;
width:100%;
text-align:center;
display:block;
background-color:green;
color:#fff;
border:3px solid green;
padding:10px 0;
font-size:20px;
cursor:pointer;
border-radius:5px
}


</style>


<script type="text/javascript">
	  
$(document).ready(function(){
$('.pass_show').append('<span class="ptxt">Show</span>');  
});
  

$(document).on('click','.pass_show .ptxt', function(){ 

$(this).text($(this).text() == "Show" ? "Hide" : "Show"); 

$(this).prev().attr('type', function(index, attr){return attr == 'password' ? 'text' : 'password'; }); 

});  


// Function to check Whether both passwords 
// is same or not. 
function checkPassword(form) { 
	password1 = form.newpassword.value; 
	password2 = form.confirmnewpassword.value; 

	if (password1 != password2) { 
		alert ("\nPassword did not match") 
		return false; 
	} 

	// If same return True. 
	else{ 
		confirm("Are you sure to submit new password?");
		return true; 
	} 
} 
</script>
</head>

<%@ include file="empheadpage.jsp"%>

<body>
<div  class="container">
<br>
	<h2 style="text-align: center">Change Password</h2>
	<div class="row">
		<div class="col-sm-4">
		    <form  action="Controller" method="post" onSubmit = "return checkPassword(this)">
		    <label><b>Current Password</b></label>
		    <div class="form-group pass_show"> 
                <input type="password" name="password"  class="form-control" placeholder="Current Password" required> 
            </div> 
		       <label><b>New Password</b></label>
            <div class="form-group pass_show"> 
                <input type="password" name="newpassword"  class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 6 or more characters" placeholder="New Password" required> 
            </div> 
		       <label><b>Confirm Password</b></label>
            <div class="form-group pass_show"> 
                <input type="password" name="confirmnewpassword"  class="form-control" placeholder="Confirm Password" required> 
            </div> 
            <button id="updatePassword" type="submit" name="button" value="updatePassword">Update Password</button>

            </form>
		</div>  
	</div>
</div>
</body>
</html>