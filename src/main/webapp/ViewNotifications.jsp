<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notifications</title>
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
	border: 1px black;
    border-radius: 8px;
    font-size: 16px;
    background-color: rgb(212, 212, 212);
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 30px;
    width: 100px;
    cursor: pointer;
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
#button02{
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
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	<h1><b>Notifications</b></h1>
	<table border="2" id="tab">
		<tr>
			<th>Message</th>
			<th>Time</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="notification" items="${notifications}">
			<tr>
				<th>${notification.message}</th>
				<th>
					<c:set var="format" value="${DateTimeFormatter.ofPattern('dd-MMM-yyyy HH:mm')}"></c:set>
					<c:out value="${notification.time.format(format)}"></c:out>
				</th>
				<th><a href="/user/delete-notification/${notification.id}"><button id="button01"><b>DELETE</b></button></a></th>
			</tr>
		</c:forEach>
	</table>
	<br>
	<a href="/user/back"><button id="button02"><b>BACK</b></button></a>
</body>
</html>
