<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style type="text/css">
body{
    background-image: url('https://indiaemployerforum.org/wp-content/uploads/2020/08/Delhi-Job-Portal-India-Employer-Forum.png');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 550px;
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
    text-align: center;
    margin: 0px auto;
    position: relative;
    top: 10px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 55px;
}
#container{
    border: 3px solid black;
    border-radius: 20px;
    height: 200px;
    width: 600px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
    margin: 40px auto;
}
button{
    border: 2px black; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 150px;
    cursor: pointer;
}
button:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	 <span id="span01">${pass}</span>
     <span id="span02">${fail}</span>
     <div>
        <h1><b><i>HireClap</i></b></h1>
        <div id="container">
             <a href="/admin/login"><button><b>Admin</b></button></a>
             <a href="/recruiter/login"><button><b>Recruiter</b></button></a>
             <a href="/user/login"><button><b>Job Seeker</b></button></a>
        </div>    
    </div>
</body>
</html>