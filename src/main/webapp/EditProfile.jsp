<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
</head>
<body>
<h1><b><i>Edit Profile</i></b></h1>
    <div>
    <form action="/user/profile" method="post" enctype="multipart/form-data">
        <fieldset>
            <legend>
                <b><i>Enter Your Details Here</i></b>
            </legend>
                <table>
                    <tr>
                        <th>Full Name :</th>
                        <td><input type="text" class="non" name="name" value="${user.getId}"></td>
                    </tr>
                    <tr>
                        <th>Email :</th>
                        <td><input type="email" class="non" name="email" value="${user.getEmail}"></td>
                    </tr>
                    <tr>
                        <th>Mobile Number :</th>
                        <td>
                            <input type="tel" pattern="[0-9]{10}" name="mobile" value="${user.getMobile}" class="non" required>
                        </td>
                    </tr>
                    <tr>
                        <th>Date Of Birth :</th>     
                        <td>                      
                            <input type="date" name="dob" class="non" value="${user.getDob}" required>
                        </td>
                    </tr>
                    <tr>
                        <th>Gender :</th>
                        <td><input type="radio" name="gender" value="male">MALE
                            <input type="radio" name="gender" value="female">FEMALE
                        </td>
                    </tr>
                    <tr>
                        <th>Highest Degree :</th>
                        <td><input type="text" class="non" name="highestdegree" required></td>
                    </tr>
                    <tr>
                        <th>Masters Percentage :</th>
                        <td><input type="text" class="non" name="masterPercentage"></td>
                    </tr>
                    <tr>
                        <th>Degree Percentage :</th>
                        <td><input type="text" class="non" name="degreePercenatge" required></td>
                    </tr>
                    <tr>
                        <th>12th :</th>
                        <td><input type="text" class="non" name="twelthPercentage" required></td>
                    </tr>
                    <tr>
                        <th>10th :</th>
                        <td><input type="text" class="non" name="tenthPercentage" required></td>
                    </tr>
                    <tr>
                        <th>Resume :</th>
                        <td> 
                            <input type="file" name="doc">
                        </td>
                    </tr> 
                </table> 
                <br>
                <div id="button">
                    <button id="button01"><b>UPDATE</b></button>
                </div> 
        </fieldset> 
    </form>
    </div>
    <a href="/user/back"><button id="button02"><b>BACK</b></button></a>
</body>
</html>