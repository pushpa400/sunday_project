<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

input[type=text], input[type=password],input[type=date],input[type=email]{
    width: 275px;
  padding: 10px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;

}

textarea{
   width: 96%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
 border: 1px solid #ccc;
  border-radius: 4px;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

input[type=submit]:hover {
  opacity: 0.8;
}

select {
  width:  298px;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 30px;
   height: 108%;
  width: 60%;
} 

</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Academic Details</title>
<script src="assets/js/scholarshipform.js"></script>
</head>
<body>

<center>

<h1>Current Academic Details</h1>
   <div class="container">
	<form id="basicScholarshipRegistration" modelAttribute="basicScholarshipRegistration" action="scholacadregprocess.do" method="post">
		<table>
			<tr><th>ERP ID:</th><td><input type="text" name="student_erp_id" id="student_erp_id" /></td></tr>
			<tr><td></td><td><div id="error-erpid" style="color: red"></div></td></tr>
		
		
			<tr><th>Course:</th>
						<td><select id="student_present_course" name="student_present_course" onchange="optionCheck()">
								<option value="">Select</option>
								<option value="BE">BE</option>
								<option value="BTECH">BTECH</option>
								<option value="BSc">BSc</option>
						</select></td></tr>
						<tr><td></td><td><div id="error-course" style="color: red"></div></td></tr>
		
		
		<tr><th>PRESENT YEAR OF STUDY:</th><td><input type="date" name="student_present_year" id="student_present_year" /></td></tr>
			<tr><td></td><td><div id="error-present_year" style="color: red"></div></td></tr>
		
		<tr><th>MODE OF STUDY:</th>
				<td><input type="radio" name="student_mode_study" id="student_mode_study" value="fulltime" checked>FullTime</td>
				<td><input type="radio" name="student_mode_study" id="student_mode_study" value="parttime">PartTime</td></tr>
				<tr><td></td><td><div 	id="error-mode_study" style="color: red"></div></td></tr>
	
		<tr><th>COURSE START DATE:</th><td><input type="date" name="student_class_start_date" id="student_class_start_date" /></td></tr>
			<tr><td></td><td><div 	id="error-startdate" style="color: red"></div></td></tr>
		
		
		
		<tr><th>UNIVERSITY</th>
						<td><select id="student_university" name="student_university" onchange="optionCheck()">
								<option value="">Select</option>
								<option value="MU">MU</option>
								<option value="PU">PU</option>
								<option value="LPU">LPU</option>
						</select></td></tr>
		<tr><td></td><td><div id="error-university" style="color: red"></div></td></tr>
		
		
		
		<tr><th>CURRENT TOTAL FEES:</th><td><input type="text" name="student_admission_fee" id="student_admission_fee" /></td></tr>
			<tr><td></td><td><div id="error-tfees" style="color: red"></div></td></tr>
		
			<tr><th>CURRENT TUTION FEES:</th><td><input type="text" name="student_tution_fee" id="student_tution_fee" /></td></tr>
			<tr><td></td><td><div id="error-tufees" style="color: red"></div></td></
			
			<tr><th>CURRENT OTHER FEES:</th><td><input type="text" name="student_other_fee" id="student_other_fee" /></td></tr>
			<tr><td></td><td><div id="error-ofees" style="color: red"></div></td></tr>
			
			
			<tr><td colspan="2"><input type="submit" onclick="return validatesar()"></td></tr>
		</table>		
	</form>
	</div>
</center>
</body>
</html>