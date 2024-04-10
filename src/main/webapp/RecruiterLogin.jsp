<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recruiter Login Page</title>
<style type="text/css">
body{
    background-image: url('https://img.freepik.com/premium-photo/office-desk-table-with-computer-top-view-with-copy-space_146377-54.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    height: 530px;
}
#span01{
    color: green;
    font-family: cursive;
    font-size: 30px;
}
h1{
    color: darkred;
    margin: 20px 200px;
    position: relative;
    top: -5px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 55px;
}
#th{
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
}
#container{
    border: 2px solid black;
    border-radius: 20px;
    background-color: azure;
    height: 250px;
    width: 550px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 20px 120px;
}
.non
{
    border: 2px solid black;
    border-radius: 10px;
    height: 35px;
    width: 250px;
}
#for{
    margin: 0 120px;
    font-size: 20px
}
#button01{
    border: 2px black;
    background-color: grey; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 120px;
    cursor: pointer;
    margin: 0 130px;
}
#button01:hover{
    background-color: rgb(103, 155, 233);
}
#button02{
    border: 2px black;
    background-color: rgb(105, 182, 105);
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 45px;
    width: 220px;
    cursor: pointer;
    margin: 20px 280px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
#button03{
    border: 2px black;
    background-color: grey; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 80px;
    cursor: pointer;
    margin: -50px 350px;
}
#button03:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	 <span id="span01">${pass}</span>
     <h1><b><i>Recruiter Login</i></b></h1>
     <div id="container">
     <form action="/recruiter/login" method="post">
         <table>
             <tr>
                 <th id="th">EMAIL :</th>
                 <td><input type="email" name="email" class="non"></td>
             </tr>
             <tr>
                 <th id="th">PASSWORD :</th>
                 <td><input type="password" name="password" class="non"></td>
             </tr>
         </table><br><br>
         <div>
             <a href="/recruiter/forgot-password" id="for">Forget Password ?</a>
         </div><br>
         <div>
             <button id="button01"><b>LOGIN</b></button>
         </div><br>
     </form> 
     </div>   
     <a href="/recruiter/signup"><button id="button02"><b>Create Account</b></button></a>
     <br><br>
     <a href="/"><button id="button03"><b>BACK</b></button></a>
</body>
</html>