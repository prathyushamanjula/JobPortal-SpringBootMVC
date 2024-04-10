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
h1{
    color: darkred;
    text-align: center;
    margin: 0px auto;
    position: relative;
    top: 10px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 40px;
}
#payment{
    border: 2px solid black;
    height: 200px;
    width: 450px;
    margin: 50px auto;
    border-radius: 10px;
    background-color: white;
}
h2{
	text-align: center;
	font-size: 28px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
#rzp-button1{
	border: 1px black;
    border-radius: 8px;
    font-size: 18px;
    background-color: rgb(212, 212, 212);
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color: black;
    height: 40px;
    width: 80px;
    cursor: pointer;
    margin: 65px 180px;
}
#rzp-button1:hover{
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
    margin: 50px 568px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
    <h1><b><i>Payment Page</i></b></h1>
	<div id="payment">
	<h2>Proceed to Pay 199 Rs?</h2>
		<button id="rzp-button1"><b>Pay</b></button>
	<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
		<script>
			var options = {
    			"key": "${details.keyDetails}", // Enter the Key ID generated from the Dashboard
   				"amount": "${details.amount}", // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
    			"currency": "INR",
    			"name": "Job-Portal", //your business name
    			"description": "For Purchasing prime membership",
    			"image": "https://www.google.com/url?sa=i&url=https%3A%2F%2Fexternlabs.com%2Fblogs%2Fjob-portal-app-development%2F&psig=AOvVaw2CCNDtfteDyYSvGGqDGCLJ&ust=1699612761689000&source=images&cd=vfe&opi=89978449&ved=0CBAQjRxqFwoTCNj-h4vdtoIDFQAAAAAdAAAAABAD",
    			"order_id": "${details.orderId}", //This is a sample Order ID. Pass the `id` obtained in the response of Step 1
    			"callback_url": "http://localhost:8080/user/payment/${details.id}",
   	 			"prefill": { //We recommend using the prefill parameter to auto-fill customer's contact information especially their phone number
        			"name": "${user.fullname}", //your customer's name
        			"email": "${user.email}",
        			"contact": "+91${user.mobile}" //Provide the customer's phone number for better conversion rates 
    			},
    			"notes": {
        			"address": "Razorpay Corporate Office"
    			},
    			"theme": {
        			"color": "#F3B664"
   				}
			};
			var rzp1 = new Razorpay(options);
			document.getElementById('rzp-button1').onclick = function(e){
    		rzp1.open();
    		e.preventDefault();
		}
    	</script>
	</div>
    <a href="/user/back"><button id="button02"><b>BACK</b></button></a>
</body>
</html>