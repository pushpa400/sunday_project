<%@page import="com.NationalScholarship.model.basicScholarshipRegistration"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
#applicants {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#applicants td, #applicants th {
  border: 1px solid #ddd;
  padding: 8px;
}
#applicants tr:nth-child(even){background-color: #f2f2f2;}
#applicants tr:hover {background-color: #ddd;}
#applicants th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<table id="applicants">
 <tr>
 <th>  <b>student_username</th>
 	<th>  <b>student_name </th>	
 	<th><b>student_gender</th>	
 	<th><b><b>student_state_domicile</th>
 	<th><b>student_district</th>
 	<th><b>student_dob</th>
 	<th><b>student_mobile_number</th>
 	<th><b>student_email</th>
 	<th><b>institute</th>
 	<th><b>student_aadhar_number</th>
 	<th><b>Institute status</th>
 	<th><b>State status</b></th>
 	<th><b>State Approve/Reject</b>
 	<!-- <th><b>Download Aadhar Card</b>
 	<th><b>Download Domicile</b>
 	<th><b>Download Id Card</b>
 	<th><b>Download Ci Cert</b>
 	<th><b>Download Marksheet</b>
 	<th><b>Download Fee Reciept</b>
 	<th><b>Download Passbook</b>
 	<th><b>Download 10th Marksheet</b>
 	<th><b>Download 12th Marksheet</b>
 	 -->
 	
 	
 	</tr>
<c:forEach items="${userlist}" var="bsr"> 
  
      <div>      
 	 <tr>
    <td><c:out value="${bsr.student_username}"/></td>

 	 
    <td><c:out value="${bsr.student_name}"/></td>
  
 	 
    <td><c:out value="${bsr.student_gender}"/></td>
  
    <td><c:out value="${bsr.student_state_domicile}"/></td>
  
    <td><c:out value="${bsr.student_district}"/></td>
  
    <td><c:out value="${bsr.student_dob}"/></td>
  
    <td><c:out value="${bsr.student_mobile_number}"/></td>
  
    <td><c:out value="${bsr.student_email}"/></td>
  
    <td><c:out value="${bsr.institute.inst_name}"/></td>
 
    <td><c:out value="${bsr.student_aadhar_number}"/></td>

     
    <td><c:out value="${bsr.status}"/></td>
<%-- <td><a href="${pageContext.request.contextPath}/approve.do?student_username=${bsr.student_username}">Approve</a> --%>
<td><a href="${pageContext.request.contextPath}/approve.do?student_username=${bsr.student_username}">Approve</a>
     <%-- <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_Aadhar.pdf">Download Aadhar</a> 
     <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_Domicile.pdf">Download Domicile</a>
     <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_IDcard.pdf">Download ID Card</a>  
     <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_CIcert.pdf">Download CI Cert</a>  
     <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_LatestMarksheet.pdf">Download Marksheet</a>  
     <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_FeeReceipt.pdf">Download Fee reciept</a>  
     <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_Passbook.pdf">Download Passbook</a>  
     <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_10thMarksheet.pdf">Download 10th Marksheet</a>  
     <td><a target="_self" href="${pageContext.request.contextPath}/download/pdf.do?fileName=${bsr.student_username}_12thMarksheet.pdf">Download 12th Marksheet</a>   --%>
<!--       <td><iframe src="C:/Users/NIRUPAM/Downloads/aman_12thMarksheet.pdf"></iframe>
 -->    
</c:forEach>
</form>
</body>
</html>