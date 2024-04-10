<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User SignUp Page</title>
<style type="text/css">
body{
    background-color: beige;
}
fieldset{
    background-color: white;
    width: 420px;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    margin: 5px auto;
}
legend{
    text-align: center;
    font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}
h1{
    text-align: center;
    margin: 20px;
    color: darkred;
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    font-size: 30px;
}
.non
{
    border: 2px solid black;
    border-radius: 10px;
    height: 35px;
    width: 250px;
}
#button{
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 20px;
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
    margin: 10px 560px;
}
#button02:hover{
    background-color: rgb(103, 155, 233);
}
</style>
</head>
<body>
    <h1><b><i>User SignUp Page</i></b></h1>
    <div>
    <form action="/user/signup" method="post" enctype="multipart/form-data">
        <fieldset>
            <legend>
                <b><i>Enter Your Details Here</i></b>
            </legend>
                <table>
                    <tr>
                        <th>FULL NAME :</th>
                        <td><input type="text" class="non" name="name"></td>
                    </tr>
                    <tr>
                        <th>EMAIL :</th>
                        <td><input type="email" class="non" name="email"></td>
                    </tr>
                    <tr>
                        <th>MOBILE NUMBER :</th>
                        <td>
                            <input type="tel" pattern="[0-9]{10}" name="mobile"  class="non" required>
                        </td>
                    </tr>
                    <tr>
                        <th>PASSWORD :</th>
                        <td><input type="password" class="non" name="password"></td>
                    </tr>
                    <tr>
                        <th>DATE OF BIRTH :</th>     
                        <td>                      
                            <input type="date" name="dob" class="non" required>
                        </td>
                    </tr>
                    <tr>
                        <th>GENDER :</th>
                        <td><input type="radio" name="gender" value="male">MALE
                            <input type="radio" name="gender" value="female">FEMALE
                        </td>
                    </tr>
                    <tr>
                        <th>HIGHEST DEGREE :</th>
                        <td><input type="text" class="non" name="highestdegree"></td>
                    </tr>
                    <tr>
                        <th>% THROUGHOUT :</th>
                        <td><input type="text" class="non" name="percentage"></td>
                    </tr>
                    <tr>
                        <th>RESUME :</th>
                        <td> 
                            <input type="file" name="doc">
                        </td>
                    </tr> 
                </table> 
                <br>
                <div id="button">
                    <button id="button01"><b>SIGN UP</b></button>
                    <button type="reset" id="button01"><b>CANCEL</b></button>
                </div> 
        </fieldset> 
    </form>
    </div>
    <a href="/user/login"><button id="button02"><b>BACK</b></button></a>
</body>
</html>