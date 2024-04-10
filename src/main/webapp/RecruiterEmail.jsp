<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter Email</title>
<style type="text/css">
body{
    background-color: azure;
}
#span01{
    color: green;
    font-family: cursive;
    font-size: 30px;
}
#span02{
    color: red;
    font-family: cursive;
    font-size: 30px;
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
    width: 270px;
}
#button01{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: rgb(212, 212, 212);
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 30px;
    width: 95px;
    cursor: pointer;
    margin: 0 200px;
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
     <span id="span01">${pass}</span>
     <span id="span02">${fail}</span>
     <form action="/recruiter/forgot-password" method="post">
		<br>
		<div id="select">
			Enter Email : <input type="text" name="email" id="box">
		</div>
		<br><br><br>
		<button id="button01"><b>SUBMIT</b></button>
	</form>
	<a href="/recruiter/login"><button id="button02"><b>BACK</b></button></a>
</body>
</html>