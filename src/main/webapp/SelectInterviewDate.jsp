<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
    background-color: azure;
}
form{
    border: 2px solid black;
    height: 150px;
    width: 500px;
    margin: 100px auto;
    border-radius: 10px;
    background-color: white;
}
#select{
	text-align: center;
	font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
#box{
    border: 2px solid black;
    border-radius: 10px;
    height: 30px;
    width: 200px;
}
#button01{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: rgb(212, 212, 212);
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 35px;
    width: 120px;
    cursor: pointer;
    margin: 50px 145px;
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
#button02{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: grey; 
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 40px;
    width: 80px;
    cursor: pointer;
    margin: -20px 570px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	<form action="/recruiter/schedule" method="post">
	<br>
		<input type="text" name="id" value="${id}" hidden="hidden">
		<div id="select">
			Enter Schedule Date : 
			<input type="datetime-local" name="interviewDate" required="required" id="box">
			<button id="button01"><b>SCHEDULE</b></button>
		</div>
	</form>
	<a href="/recruiter/back"><button id="button02"><b>BACK</b></button></a>
</body>
</html>
