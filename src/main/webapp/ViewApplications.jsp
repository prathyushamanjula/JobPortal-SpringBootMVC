<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Applications</title>
<style type="text/css">
body{
    background-color: beige;
}
h1{
    color: darkred;
    text-align: center;
    margin: 0px auto;
    position: relative;
    top: 10px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 50px;
}
#tab{
    margin: 30px auto;
}
#button01{
    border: 2px black;
    background-color: grey; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 80px;
    cursor: pointer;
    margin: 0 580px;
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	<h1><b>Applied Job Details</b></h1>
	<table border="2" id="tab">
		<tr>
			<th>Company Name</th>
			<th>Role</th>
			<th>Package</th>
			<th>Location</th>
			<th>Applied Date</th>
			<th>Interview Date</th>
			<th>Current Status</th>
		</tr>
		<c:forEach var="application" items="${applications}">
			<tr>
				<th>${application.job.recruiter.companyname}</th>
				<th>${application.job.title}</th>
				<th>${application.job.ctc}</th>
				<th>${application.job.location}</th>
				<th>
					<c:set var="format" value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}"></c:set>
					<c:out value="${application.appliedDate.format(format)}"></c:out>
				</th>
				<th>
					<c:if test="${application.interviewDate==null}">Not Scheduled Yet</c:if> 
					<c:if test="${application.interviewDate!=null}">
						<c:set var="format"
							value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}"></c:set>
						<c:out value="${application.interviewDate.format(format)}"></c:out>
					</c:if>
				</th>
				<th>${application.jobStatus}</th>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="/user/back"><button id="button01"><b>BACK</b></button></a>
</body>
</html>