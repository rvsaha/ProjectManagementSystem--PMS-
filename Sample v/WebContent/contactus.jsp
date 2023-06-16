<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<%@ include file="headpage.jsp"%>

<body style="color:black;">

<h1 style="text-align: center;">  Contact Us!! </h1>
     <form action="Controller" method="post" style="display: inline-block; margin-left:80px;">
          <label for="name" style="text-align: center;">Name:</label><br><br>
          <input type="text" id="name" name="user_name" pattern="[A-Za-z]{50}" placeholder="Enter full name" title="User name" required>
          <br><br>
          <label>Email:</label><br><br>
          <input type="email" name="email" id="email" placeholder="Enter email" size="30" title="Email Address" required>
          <br><br>
          <label>Contact Number:</label><br><br>        
          <input type="tel" pattern="[1-9][0-9]{9}" placeholder="Example: 9876543210" name="cphone" id="cphone" placeholder="Enter your Contact number" size="30" title="Enter a 10 digit mobile numbe r" required>
          <br><br>
          <label for="bio">Message:</label><br><br>
          <textarea id="bio" name="user_bio" placeholder ="What's on your mind?" title="enter your query" required style="width: 335px; height: 100px;"></textarea>
       	 <button id="submitemp" type="submit" name="button" value="contactUs"  style="background-color: green; color: white; font-size: 17px;">Submit</button>
      	</form>
        <span style="float: right;margin-right:80px "><img style="width:500px; height:500px;" src="images/cu.jpeg"></span>

</body>
</html>