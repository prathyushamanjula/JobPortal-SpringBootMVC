<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
    background-image: url('https://semidotinfotech.com/web/images/job-portal-development.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 540px;
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
    top: 20px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 55px;
    margin: 20px 110px;
}
#button01{
    border: 2px black; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 200px;
    cursor: pointer;
    margin: 10px 180px;
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
#button02{
    border: 2px black; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 150px;
    cursor: pointer;
    margin: 10px 200px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
     <span id="span01">${pass}</span>
     <span id="span02">${fail}</span>
     <h1><b><i>Admin Home</i></b></h1><br><br>
     <a href="/admin/view-jobs"><button id="button01"><b>Approve Jobs</b></button></a><br><br>
     <a href="/logout"><button id="button02"><b>Logout</b></button></a>
</body>
</html>