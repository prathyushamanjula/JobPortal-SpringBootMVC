<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
    background-image: url('https://assets.skyfilabs.com/images/blog/job-portal-using-python.webp');
    background-size: contain;
    height: 500px;
    overflow: hidden;
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
h1{
    color: darkred;
    position: relative;
    top: 2px;
    left: 450px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 55px;
}
button{
    border: 2px black; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 200px;
    cursor: pointer;
    margin: 15px 550px;
}
button:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	 <span id="span01">${pass}</span>
     <span id="span02">${fail}</span>
     <h1><b><i>Recruiter Home</i></b></h1><br>
     <a href="/recruiter/add-job"><button><b>Add Jobs</b></button></a>
     <a href="/recruiter/view-jobs"><button><b>View Jobs</b></button></a>
     <a href="/recruiter/view-applications"><button><b>See Applications</b></button></a>
	 <a href="/logout"><button><b>Logout</b></button></a>
</body>
</html>
