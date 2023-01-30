<%-- 
    Document   : ageCalculator
    Created on : Jan 28, 2023, 5:02:34 PM
    Author     : Ben Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>        
        <h1>Age Calculator</h1>
        <form method="post" action="age">
            <label>Enter your age:</label>
            <input type="text" name="current_age" value=""/>
            <br>
            <input type="submit" value="Age next birthday"/>
            <br>
            <p>${message}</p>            
            <a href="arithmetic" >Arithmetic Calculator</a>
        </form>
    </body>
</html>