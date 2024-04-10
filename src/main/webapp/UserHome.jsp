<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home</title>
<style type="text/css">
body{
    background-image: url('https://static.weblinkindia.net/images/job-portal-banner.jpg');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    height: 552px;
}
h1{
    color: darkred;
    position: relative;
    top: 20px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 55px;
    margin: 0 110px;
}
button{
    border: 2px black; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 200px;
    cursor: pointer;
    margin: 20px 220px;
}
button:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
    ${fail}${pass}
	<h1><b><i>Job Seeker Home</i></b></h1><br>
	<c:if test="${!user.prime }">
		<a href="/user/buy-prime"><button><b>Buy Prime</b></button></a>
	</c:if>
	<a href="/user/view-jobs"><button><b>Jobs</b></button></a>
	<a href="/user/view-application"><button><b>My Applications</b></button></a>
	<a href="/user/notifications"><button><b>Notifications</b></button></a>
	<a href="/user/profile"><button>Edit Profile</button></a>
	<a href="/logout"><button><b>Logout</b></button></a>
</body>
</html>