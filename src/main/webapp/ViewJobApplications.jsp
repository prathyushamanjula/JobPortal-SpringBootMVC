<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
    background-color: rgb(212, 212, 212);
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 5px;
    cursor: pointer;
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
#button02{
    border: 2px black;
    background-color: rgb(212, 212, 212);
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 5px;
    cursor: pointer;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
#button03{
    border: 2px black;
    background-color: grey; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 80px;
    cursor: pointer;
    margin: 150px 560px;
}
#button03:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	<div id="applications">
		<h1><b>Applied Job Details</b></h1>
		<table border="2px" id="tab">
			<tr>
				<th>Applicant Name</th>
				<th>Mobile</th>
				<th>Role Applied</th>
				<th>Download Resume</th>
				<th>Applied Date</th>
				<th>Interview Date</th>
				<th>Current Status</th>
				<th>Change Status</th>
			</tr>

			<c:forEach var="application" items="${applications}">
				<tr>
					<th>${application.user.fullname }</th>
					<th>${application.user.mobile }</th>
					<th>${application.job.title }</th>
					<th>
						<a href="/recruiter/resume/${application.user.id}">
							<button id="button01">Download Resume</button>
						</a>
					</th>
					<th>
						<c:set var="format" value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}"></c:set>
						<c:out value="${application.appliedDate.format(format)}"></c:out>
					</th>
					<th>
						<c:if test="${application.interviewDate==null}">NA</c:if>
						<c:if test="${application.interviewDate!=null}">
						<c:set var="format"
							value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}"></c:set>
						<c:out value="${application.interviewDate.format(format)}"></c:out>
					</c:if>
					</th>
					<th>${application.jobStatus}</th>
					<th>
						<c:if
							test="${application.jobStatus.name().equals('APPLIED')}">
							<a href="/recruiter/schedule/${application.id}">
								<button id="button01">Schedule Interview</button>
							</a>
						</c:if> 
						<c:if test="${application.jobStatus.name().equals('SCHEDULED')}">
							<a href="/recruiter/accept/${application.id}"><button id="button02">Accept</button></a>
							<a href="/recruiter/reject/${application.id}"><button id="button02">Reject</button></a>
						</c:if> 
						<c:if
							test="${application.jobStatus.name().equals('SELECTED')||application.jobStatus.name().equals('REJECTED')}">
							NA
						</c:if>
					</th>
				</tr>
			</c:forEach>
		</table>
	 </div>
 	<br>
	<a href="/recruiter/view-applications"><button id="button03"><b>BACK</b></button></a>
</body>
</html>
