<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Jobs</title>
<style type="text/css">
body{
    background-color: beige;
}
h1{
    color: darkred;
    text-align: center;
    margin: 0px auto;
    position: relative;
    top: 30px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 50px;
}
#tab{
    margin: 50px auto;
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
	<h1><b>All Job Details</b></h1>
	<table border="2" id="tab">
		<tr>
			<th>Job Role</th>
			<th>Job Description</th>
			<th>Salary Package</th>
			<th>Experience</th>
			<th>Location</th>
			<th>Status</th>
			<th>Posted</th>
		</tr>
		<c:forEach var="job" items="${jobs}">
			<tr>
				<td>${job.title }</td>
				<td>${job.description}</td>
				<td>${job.ctc}</td>
				<td>${job.experience}</td>
				<td>${job.location}</td>
				<td>
					<c:if test="${job.approved}">
						Approved
					</c:if>
					<c:if test="${!job.approved}">
						Not Approved
					</c:if>
				</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="/recruiter/back"><button id="button01"><b>BACK</b></button></a>
</body>
</html>