<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">


  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" > 

  <link href="elements.css" rel="stylesheet">
  <script src="my_js.js"></script>

<script type="text/javascript" src="table_script.js"></script>

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

.header a.active {
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

<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a, .dropbtn {
  display: inline-block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover, .dropmenu:hover .dropbtn {
  background-color: red;
}

li a:hover:not(.active) {
  background-color: #CCFF66;
}

.active {
  background-color: #4CAF50;
}

li.dropmenu {
  display: inline-block !important;
}

.dropmenu-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropmenu-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropmenu-content a:hover {background-color: #f1f1f1;}

.dropmenu:hover .dropmenu-content {
  display: block;
}
</style>


<style>

/* Style the header */
.mhead 
{
  padding: 5px;
  text-align: center;
}
</style>

<style> 
select {
  width: 100%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}
</style>

<style>
td.padding {
  
  /*padding-right: 100%;*/
  padding: 25px 52px;
  /*column-width: 1cm;
  padding-left: 45%;*/
  font-size: small;
}
</style>

<style>
  /* Popup box BEGIN */
.hover_bkgr_fricc{
    background:rgba(0,0,0,.4);
    cursor:pointer;
    display:none;
    height:100%;
    position:fixed;
    text-align:center;
    top:0;
    width:100%;
    z-index:10000;
}
.hover_bkgr_fricc .helper{
    display:inline-block;
    height:100%;
    vertical-align:middle;
}
.hover_bkgr_fricc > div {
    background-color: #fff;
    box-shadow: 10px 10px 60px #555;
    display: inline-block;
    height: auto;
    max-width: 551px;
    min-height: 100px;
    vertical-align: middle;
    width: 60%;
    position: relative;
    border-radius: 8px;
    padding: 15px 5%;
}
.popupCloseButton {
    background-color: #fff;
    border: 3px solid #999;
    border-radius: 50px;
    cursor: pointer;
    display: inline-block;
    font-family: arial;
    font-weight: bold;
    position: absolute;
    top: -20px;
    right: -20px;
    font-size: 25px;
    line-height: 30px;
    width: 30px;
    height: 30px;
    text-align: center;
}
.popupCloseButton:hover {
    background-color: #ccc;
}
.trigger_popup_fricc {
    cursor: pointer;
    font-size: 20px;
    margin: 20px;
    display: inline-block;
    font-weight: bold;
}
/* Popup box BEGIN */
</style>


<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {padding: 10px 24px;}
.button2 {padding: 12px 28px;}
.button3 {padding: 14px 40px;}
.button4 {padding: 32px 16px;}
.button5 {padding: 16px;}
</style>

<style>
.pointer {cursor: pointer;}
</style>

</head>

<script>
  
  $(window).load(function () {
    $(".trigger_popup_fricc").click(function(){
       $('.hover_bkgr_fricc').show();
    });
    $('.hover_bkgr_fricc').click(function(){
        $('.hover_bkgr_fricc').hide();
    });
    $('.popupCloseButton').click(function(){
        $('.hover_bkgr_fricc').hide();
    });
});

</script> 

<body>

<div class="header">
  <a href="#default" class="logo"><img src="D:\PMS\logo.jfif"  style="width:90px;height:90px;"> </a>
  <div class="header-right">
    <a  href="homePage.html"> <i class="fa fa-fw fa-home"></i> Home</a>
    <a href="#contact"> <i class="fa fa-fw fa-envelope"></i>Contact</a>
    <a href="#about"> <i class="fa fa-fw fa-user"></i>Sign Out</a>
  </div>
</div>



<ul>
  <li class="dropmenu">
    <a href="javascript:void(0)" class="dropbtn">Departments</a>
    <div class="dropmenu-content">
      <!-- <td><button type="button" id="popup" onclick="div_show()">Edit!</button></td> -->
      <a  href="data.jsp" name="managedept" value="managedept" >Manage Departments</a>
      <!-- <button type="button" id="popup" onclick="div_show()">Add New Department</button> -->
      <a class="pointer" onclick="div_show()" name="addept" value="addept" >Add New Department</a>
      <a href="#" name="managemp" value="managemp" >Manage Employee</a>
      <a href="#" name="ademp" value="ademp" >Add New Employee</a>
    </div>
  </li>
  <li class="dropmenu">
    <a href="javascript:void(0)" class="dropbtn">Master Plans</a>
    <div class="dropmenu-content">
      <a href="#" name="managemp" value="managemp" >Manage Master Plans</a>
      <a href="#" name="admp" value="admp" >Add Master Plan</a>
    </div>
  </li>
  <li class="dropmenu">
    <a href="javascript:void(0)" class="dropbtn">Projects</a>
    <div class="dropmenu-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </li>
  <li class="dropmenu">
    <a href="javascript:void(0)" class="dropbtn">Tasks</a>
    <div class="dropmenu-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </li>
  <li class="dropmenu">
    <a  href="javascript:void(0)" class="dropbtn">My Desk</a>
    <div class="dropmenu-content">
      <a href="#">Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </li>
  <!-- <li style="float:right"><a  href="#about"> My Name </a></li> -->
  <li style="float:right"><a class="active" href="#about"> <i class="fa fa-fw fa-user"></i> My Profile </a></li>
</ul>


<div class="container">

<div class="mhead">
  <h1> Manage Departments</h1>
</div>

  
  <table style="width:100%">
    
    <tr>

      <td> <input id="deptno" name="deptno" placeholder="Enter Dept ID" type="text" >  </td>
       <td>  <button type="button" class="button button1" onclick="">Search</button> </td>
      <!-- <td style="font-size: medium;"><label><b>Search In :</b></label></td>
      <td>  <select id="Dept" name="Dept">
        <option  value="" disabled selected hidden>--select--</option>
          <option value="d1">Dept No-1</option>
          <option value="d2">Dept No-2</option>
          <option value="d3">Dept No-3</option>
          <option value="d4">Dept No-4</option>
          <option value="d5">Dept No-5</option>
          <option value="d6">Dept No-6</option>
        </select>
      </td> -->

      <td  class="padding" align="center"  ><button type="button" id="popup"  name="button"  value="add department value" class="button button1" onclick="div_add();div_show()">Add New Department</button></td>

      <td  class="padding" align="center" ><button type="button" id="popup" name="button"  value="edit department value" class="button button1" onclick="div_edit();div_show()">Edit Department</button></td>
     
       <td  class="padding" align="center" ><button type="button" id="popup" class="button button1" onclick="div_show1()">Delete Dept</button></td>
    
      <!-- <td class="padding" >  <b>Search:</b> </td>
      <td ><input type="text" name="search" placeholder="Search.."></td> -->
    </tr>
  </table>

  <!-- <div id="table_div"></div> important ***********-->

<form action="Controller" id="form" method="post" name="form">
 <div id="wrapper">
<table align='center' cellspacing=2 cellpadding=5 id="data_table" border=1>
<tr>
<th>Department id</th>
<th>Department Name</th>
<th>Head of the Department</th>
<th>Buttons</th>
</tr>

<tr>
  <td><input type="text" id="new_department_id" name="deptno"></td>
<td><input type="text" id="new_department_name" name="deptname"></td>
<td><input type="text" id="new_head_department" name="hodname"></td>
<td><input type="submit" class="add" onclick="add_row();" name="button" value="addDepartment"></td>
</tr>

</table>
</div>
</form>
  
 <div id="abc" style="display:none;">
<!-- Popup Div Starts Here -->
<div id="popupContact">
<!-- Contact Us Form -->
<form action="Controller" id="form" method="post" name="form">
<img id="close" src="closepop.png" onclick ="div_hide()">

<h2 id="popupname"></h2>
<hr>


  <table>
    <tr>
      <td style="font-size: medium;"><b>Dept No:</b></td>
      <td > <input id="deptno" name="deptno" placeholder="Default" type="text" > </td>
    </tr>

    <tr>
      <td style="font-size: medium;"><b>Dept Name:</b></td>
      <td > <input id="deptname" name="deptname" placeholder="Type Dept Name" type="text"> </td>
    </tr>

    <tr>
      <td style="font-size: medium;"><b>Head of Dept:</b></td>
      <td > <input id="hodname" name="hodname" placeholder="Type Head of Dept" type="text"> </td>
    </tr>

  </table>


<br>

<button href="javascript:%20check_empty()" id="submit" name = "button" type="submit" value="addDepartment">Save & Submit</button>
</form>
</div>
<!-- Popup Div Ends Here -->
</div>
<!-- Display Popup Button -->


<div id="abc1" style="display:none;" >
<!-- Popup Div Starts Here -->
<div id="popupContact">
<!-- Contact Us Form -->
<form action="#" id="form" method="post" name="form">
<img id="close" src="closepop.png" onclick ="div_hide1()">

<h2>Delete Department</h2>
<hr>


  <table>
    <tr>
      <td style="font-size: medium;"><b>Dept No:</b></td>
      <td > <input id="deptno" name="deptno" placeholder="Enter Department ID" type="text" > </td>
    </tr>

  </table>


<br>

<button href="javascript:%20check_empty()" id="submit" type="submit">Delete</button>
</form>
</div>
<!-- Popup Div Ends Here -->
</div>
<!-- Display Popup Button -->




</body>
</html>
