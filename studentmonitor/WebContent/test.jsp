<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Tabs - Sortable</title>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

table {
	font-size: 1em;
}

.ui-draggable, .ui-droppable {
	background-position: top;
}
</style>
  
  <link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath}/resources/css/student_monitor_main.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/jquery-ui.css" />
  <link rel="stylesheet" type="text/css" href="css/student_monitor_main.css" />
  <script type="text/javascript" src="js/jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script> 
  <script type="text/javascript" src="js/jquery-ui-1.12.1.custom/jquery-ui.js"></script> 

<script>
  $( function() {
    $( "#dob" ).datepicker();
  } );
  
  $( function() {
	    $( "#datejoined" ).datepicker();
	  } );
 </script>
  
  <script>
  $( function() {
    var tabs = $( "#tabs" ).tabs();
    tabs.find( ".ui-tabs-nav" ).sortable({
      axis: "x",
      stop: function() {
        tabs.tabs( "refresh" );
      }
    });
  } );
  
  
  
  </script>
</head>
<body>
 
<p>Student information</p> 

<div id="tabs">
  <ul>
    <li><a href="#tabs-1">Personal</a></li>
    <li><a href="#tabs-2">Exams</a></li>
    <li><a href="#tabs-3">Sports and other</a></li>
  </ul>
  <div id="tabs-1">
   
   	<div class="container">
		<div>
		<label for="fname">First Name</label>
		<input type="text" id="fname" name="firstname">
		</div>
		<div>
		<label for="lname">Middle Name</label>
		<input type="text" id="mname" name="middlename">
		</div>
		<div>
		<label for="lname">Last Name</label>
		<input type="text" id="lname" name="lastname">
		</div>
		
		<div>
		<label for="dob">Date of birth</label>
		<input type="text" id="dob">
		</div>
		
		<div>
		<label for="datejoined">Date joined</label>
		<input type="text" id="datejoined">
		</div>
		  			
	</div>
  
	<div class="container">
		
		<div>
		<label for="curyear">Current year</label>
		
		<select>
		  <option value="y0">Year</option>	
		  <option value="y1">1</option>
		  <option value="y2">2</option>
		  <option value="y3">3</option>
		  <option value="y4">4</option>
		  <option value="y5">5</option>
		  <option value="y6">6</option>
		  <option value="y7">7</option>
		  <option value="y8">8</option>
		  <option value="y9">9</option>
		  <option value="y10">10</option>
		  <option value="y11">11</option>
		  <option value="y12">12</option>
		</select>
		
		</div>
		<div>
		<label for="lname">Race</label>
		<input type="text" id="race">
		</div>
		<div>
		<label for="lname">Religion</label>
		<input type="text" id="religion">
		</div>
	</div> 
  
	<div class="container">
		<div>
		<label for="lname">Mother's name</label>
		<input type="text" id="mothername">
		</div>
		<div>
		<label for="lname">Father's name</label>
		<input type="text" id="fathername">
		</div>
		<div>
		<label for="lname">Immediate contact name</label>
		<input type="text" id="contactname">
		</div>
		<div>
		<label for="contactnumber">Contact number</label>
		<input type="text" id="contactnumber">
		</div>
		
		
	</div>  
	
	<div class="container">
		<div>
		<label for="lname">Address</label>
		<input type="text" id="address">
		</div>
		
		<div>
		<label for="lname">City</label>
		<input type="text" id="city">
		</div>
		
		<div>
		<label for="lname">Province</label>
		<input type="text" id="province">
		</div>
		  	
  	</div>
   
    
  </div>
  <div id="tabs-2">
    
    <fieldset>
    <legend>Year 1 - Teram 1</legend>
    <div class="controlgroup-vertical">
      <table>
      
      <tr>
      <td>
      
      </td>
      </tr>
      
      </table>
      
    </div>
  </fieldset>
    
    
    
  </div>
  <div id="tabs-3">
    <p>Mauris eleifend est et turpis. Duis id erat. Suspendisse potenti. Aliquam vulputate, pede vel vehicula accumsan, mi neque rutrum erat, eu congue orci lorem eget lorem. Vestibulum non ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce sodales. Quisque eu urna vel enim commodo pellentesque. Praesent eu risus hendrerit ligula tempus pretium. Curabitur lorem enim, pretium nec, feugiat nec, luctus a, lacus.</p>
    <p>Duis cursus. Maecenas ligula eros, blandit nec, pharetra at, semper at, magna. Nullam ac lacus. Nulla facilisi. Praesent viverra justo vitae neque. Praesent blandit adipiscing velit. Suspendisse potenti. Donec mattis, pede vel pharetra blandit, magna ligula faucibus eros, id euismod lacus dolor eget odio. Nam scelerisque. Donec non libero sed nulla mattis commodo. Ut sagittis. Donec nisi lectus, feugiat porttitor, tempor ac, tempor vitae, pede. Aenean vehicula velit eu tellus interdum rutrum. Maecenas commodo. Pellentesque nec elit. Fusce in lacus. Vivamus a libero vitae lectus hendrerit hendrerit.</p>
  </div>
</div>
</body>
</html>