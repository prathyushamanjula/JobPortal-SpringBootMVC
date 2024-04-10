<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Job</title>
<style type="text/css">
body{
    background-color: beige;
}
h2{
    text-align: center;
    margin: 10px;
    color: darkred;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 30px;
}
#tab{
    background-color: white;
    text-align: center;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border: 2px solid black;
    height: 350px;
    width: 500px;
    margin: 10px auto;
}
input{
	border: 2px solid black;
    margin: 10px 0px;
    height: 25px;
    width: 350px;
}
#button01{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: rgb(212, 212, 212);
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 30px;
    width: 92px;
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
    height: 30px;
    width: 80px;
    cursor: pointer;
    margin: -10px 560px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
    ${pass}
    <h2><b>Job Details</b></h2>
	<form action="/recruiter/add-job" method="post">
		<table id="tab">
			<tr>
				<th>Enter Job Title:</th>
			</tr>
			<tr>
				<td><input type="text" class="non" name="title"></td>
			</tr>
			<tr>
				<th>Enter Skills Required :</th>
			</tr>
			<tr>
				<td><input type="text" class="non" name="skills"></td>
			</tr>
			<tr>
				<th>Enter Job Decription :</th>
			</tr>
			<tr>
				<td><input type="text" name="description" class="non"></td>
			</tr>
			<tr>
				<th>Experience Required In Years :</th>
			</tr>
			<tr>
				<td><input type="text" class="non" name="experience"></td>
			</tr>
			<tr>
				<th>Package :</th>
			</tr>
			<tr>
				<td><input type="text" class="non" name="ctc">LPA</td>
			</tr>
			<tr>
				<th>Location :</th>
			</tr>
			<tr>
				<td><input type="text" class="non" name="location"></td>
			</tr>
			<tr>
				<td>
				    <button id="button01"><b>ADD</b></button>
				    <button type="reset" id="button01"><b>CANCEL</b></button>
				</td>
			</tr>
		</table>
	</form>
	<br>
	<a href="/recruiter/back"><button id="button02"><b>BACK</b></button></a>
</body>
</html>