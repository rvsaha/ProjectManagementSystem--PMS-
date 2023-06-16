<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">




 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS: You can use this stylesheet to override any Bootstrap styles and/or apply your own styles -->
    <link href="css/custom.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link href="styles\headpage.css" rel="stylesheet">
  


<link type="text/css" rel="stylesheet" href="styles\employeform.css"/>
<link type="text/css" rel="stylesheet" href="styles\masterplanform.css"/>
<link type="text/css" rel="stylesheet" href="styles\projectform.css"/>

  <link href="styles/tasks.css" rel="stylesheet">

</head>

<%@ include file="empheadpage.jsp"%>

<body style="color:black;">

<h1 style="text-align: center;">  Contact Us!! </h1>
     <form action="Controller" method="post" style="display: inline-block; margin-left:80px;">
          <label for="name" style="text-align: center;">Name:</label><br><br>
          <input type="text" id="name" name="user_name" placeholder="Enter full name" title="User name" required>
          <br><br>
          <label>Email:</label><br><br>
          <input type="email" name="email" id="email" placeholder="Enter email" size="30" title="Email Address" required>
          <br>
          <label>Contact Number:</label><br><br>        
          <input type="tel" pattern="[1-9][0-9]{9}" placeholder="Example: 9876543210" name="cphone" id="cphone" placeholder="Enter your Contact number" size="30" title="Enter a 10 digit mobile numbe r" required>
          <br>
          <label for="bio">Message:</label><br><br>
          <textarea id="bio" name="user_bio" placeholder ="What's on your mind?" title="enter your query" required style="width: 335px; height: 100px;"></textarea>
       	 <button id="submitemp" type="submit" name="button" value="contactUs"  style="background-color: green; color: white; font-size: 17px;">Submit</button>
      	</form>
        <span style="float: right;margin-right:80px "><img style="width:500px; height:500px;" src="images/cu.jpeg"></span>

</body>
</html>