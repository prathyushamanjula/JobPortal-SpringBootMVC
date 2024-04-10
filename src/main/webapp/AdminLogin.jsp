<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<style type="text/css">
body{
    background-image: url('https://media.licdn.com/dms/image/C4D12AQFi4yZvoIWupw/article-cover_image-shrink_720_1280/0/1520245690181?e=2147483647&v=beta&t=tKYwNZxeVVDIwUTZXxVbb0A9oxl2ZK0iVEOiPYOwGE4');
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
    top: 30px;
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
    height: 200px;
    width: 550px;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 60px auto;
}
.non
{
    border: 2px solid black;
    border-radius: 10px;
    height: 35px;
    width: 250px;
}
#button01{
    border: 2px black;
    background-color: grey; 
    font-size: 20px;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    border-radius: 10px;
    height: 40px;
    width: 150px;
    cursor: pointer;
    margin: 0 100px;
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
    height: 40px;
    width: 150px;
    cursor: pointer;
    margin: 0 530px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
	 <span id="span01">${pass}</span>
     <span id="span02">${fail}</span>
     <h1><b><i>Admin Login</i></b></h1>
     <div id="container">
     <form action="" method="post">
         <table>
             <tr>
                 <th id="th">EMAIL :</th>
                 <td><input type="text" name="email" class="non"></td>
             </tr>
             <tr>
                 <th id="th">PASSWORD :</th>
                 <td><input type="password" name="password" class="non"></td>
             </tr>
         </table><br><br>
         <div>
             <button id="button01"><b>LOGIN</b></button>
         </div>
     </form>
     </div>
     <a href="/"><button id="button02"><b>BACK</b></button></a>
</body>
</html>