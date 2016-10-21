<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<!-- add tag srping:url -->
<spring:url value="/resources/css/jquery-ui.css" var="jqueryUiCSS" />
<spring:url value="/resources/css/student_monitor_main.css" var="studentMonitorMainCSS" />
<spring:url value="/resources/js/jquery.js" var="jqueryJS" />
<spring:url value="/resources/js/jquery-ui.js" var="jqueryUiJS" />

<link href="${jqueryUiCSS}" rel="stylesheet" />
<link href="${studentMonitorMainCSS}" rel="stylesheet" />
<script src="${jqueryJS}"></script>
<script src="${jqueryUiJS}"></script>
<!-- Finish adding tags -->

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Student Performance Records</title>
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

<!--   
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" type="text/css" href="css/student_monitor_main.css">
  <script type="text/javascript" src="js/jquery-ui-1.12.1.custom/external/jquery/jquery.js"></script> 
  <script type="text/javascript" src="js/jquery-ui-1.12.1.custom/jquery-ui.js"></script> 
 -->
 
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
  
<script>
$(document).ready(function(){
	
    $("button").click(function(){
    	
    	var studentid = 999;
    	var firstname = $('#fname').val();
    	var middlename = $('#mname').val();
    	var lastname = $('#lname').val();
    	var dob = $('#dob').val();
    	var datejoined = $('#datejoined').val();
    	var currentYear = $( "#currentYear option:selected" ).text();
    	var race = $( "#race option:selected" ).text();
    	var religion = $( "#religion option:selected" ).text();
    	var mothername = $('#mothername').val();
    	var fathername = $('#fathername').val();
    	var contactname = $('#contactname').val();
    	var address = $('#address').val();
    	var city = $('#city').val();
    	var province = $('#province').val();
    	
		var studentJSON="";
    	/*
		studentJSON	=	'{'	
															+
							"firstname" +':'+ firstName		+','+
							"lastname" +':'+ lname			+','+
							"dob" +':'+ dob					+','+
							"address" +':'+ address			+','+
							"city" +':'+ city				+','+
							"province" +':'+ province		+','+
							"fathername" +':'+ fathername	+','+
							"mothername" +':'+ mothername	+
							
						'}';
		*/
			var studentJSONObj = new Object();
			
			alert(studentid+"/"+firstname+"/"+firstname+"/"+lastname+"/"+dob+"/"+address+"/"+city+"/"+province+"/"+fathername+"/"+mothername);
			studentJSONObj.studentid = 999999;
			studentJSONObj.firstname = firstname;
			studentJSONObj.lastname  = lastname;
			studentJSONObj.dob = dob;
			studentJSONObj.address = address;
			studentJSONObj.city = city;
			studentJSONObj.province = province;
			studentJSONObj.fathername = fathername;
			studentJSONObj.mothername = mothername;
		   
		   var studentJSONStr= JSON.stringify(studentJSONObj);
			
		   alert("jsonString :: "+studentJSONStr);
		
		//var jsonvar = '{"studentid":99,"firstname":"Thomas","lastname":"BBBB","dob":30,"address":"DDDDD","city":"KKKKKK","province":"JJJJJ","fathername":"LLLLL","mothername":"KKKKK"}';
						
    	//alert(jsonvar);					
    	
    	//alert('{"id":1,"name":"Sam","age":30,"salary":70000.0}');
		//var jsonvar = '{"id":1,"name":"Sam","age":30,"salary":70000.0}';
		
		//alert(jsonvar);
		//var arr = JSON.parse(studentJSON);
		//alert(arr);
		
    	$.ajax({
    		  url: 'http://localhost:8080/studentmonitor/student/',
    		  type: 'POST',
    		  contentType : "application/json",
    		  cache : false,
    		  data: studentJSONStr,
    		  
    		  success: function(data) {
    			//called when successful
    			//alert(JSON.stringify(data));
    			//alert(data[1].name);
    			//$('#ajaxphp-results').html(data);
    		  },
    		  error: function(e) {
    			  alert("error");
    			//called when there is an error
    			//console.log(e.message);
    		  }
    		});
    	
    	
    	
        /*$.post("http://localhost:8080/Spring4MVCCRUDRestService/user/",
        function(data,status){
            alert("Data: " + data + "\nStatus: " + status);
        });*/
    });
});
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
		<label for="mname">Middle Name</label>
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
		
		<select id="currentYear">
		  <option value="y0">Select</option>	
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
		<label for="race">Race</label>
		<select id="race">
		 <option value="select">Select</option>
		 <option value="Sinhalese">Sinhalese</option>
		 <option value="Muslim">Muslim</option>
		 <option value="Tamil">Tamil</option>	
		</select>
		</div>
		
		<div>
		<label for="religion">Religion</label>
		<select id="religion">
		 <option value="select">Select</option>
		 <option value="Buddhist">Buddhist</option>
		 <option value="Muslim">Muslim</option>
		 <option value="Hindu">"Hindu"</option>	
		 <option value="Christian">"Christian"</option>
		</select>
		</div>
		
	</div> 
  
	<div class="container">
		<div>
		<label for="mothername">Mother's name</label>
		<input type="text" id="mothername">
		</div>
		<div>
		<label for="fathername">Father's name</label>
		<input type="text" id="fathername">
		</div>
		<div>
		<label for="contactname">Immediate contact name</label>
		<input type="text" id="contactname">
		</div>
		<div>
		<label for="contactnumber">Contact number</label>
		<input type="text" id="contactnumber">
		</div>
		
		
	</div>  
	
	<div class="container">
		<div>
		<label for="address">Address</label>
		<input type="text" id="address">
		</div>
		
		<div>
		<label for="city">City</label>
		<input type="text" id="city">
		</div>
		
		<div>
		<label for="province">Province</label>
		<input type="text" id="province">
		</div>
		  	
  	</div>
   
   <div>
   <button class="ui-button ui-widget ui-corner-all">Save</button>
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