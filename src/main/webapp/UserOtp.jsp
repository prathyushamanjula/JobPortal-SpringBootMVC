<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enter OTP</title>
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
    width: 400px;
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
    width: 180px;
}
#button01{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: rgb(212, 212, 212);
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 35px;
    width: 95px;
    cursor: pointer;
    margin: -10px 150px;
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
#resendButton{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: grey; 
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 40px;
    width: 150px;
    cursor: pointer;
    margin: -100px 535px;
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
    margin: 20px 570px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	<span id="span01">${pass}</span>
    <span id="span02">${fail}</span>
	<form action="/user/verify-otp" method="post">
		<input type="text" name="id" value="${id}" hidden="hidden">
		<br>
		<div id="select">
			Enter OTP : <input type="text" name="otp" id="box">
		</div>
		<br><br><br>
		<button id="button01"><b>SUBMIT</b></button>
	</form>
	<a href="/user/resend-otp/${id}"><button id="resendButton"><b>Resend Otp</b></button></a>
	<br><br>
	<a href="/user/signup"><button id="button02"><b>BACK</b></button></a>
	<script>
		var resendButton = document.getElementById("resendButton");
		var timer;

		function disableButton() {
			resendButton.disabled = true;

			var seconds = 30;
			timer = setInterval(function() {
				resendButton.innerHTML = "Resend Otp (" + seconds + "s)";
				seconds--;

				if (seconds < 0) {
					clearInterval(timer);
					resendButton.innerHTML = "Resend Otp";
					resendButton.disabled = false;
				}
			}, 1000); // 1000 milliseconds = 1 second
		}

		// Call this function when the page loads to set the initial state
		window.onload = function() {
			disableButton();
		};

		// Optionally, you can clear the timer when the user leaves the page
		window.onunload = function() {
			clearInterval(timer);
		};
	</script>
</body>
</html>