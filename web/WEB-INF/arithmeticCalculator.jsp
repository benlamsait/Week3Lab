<%-- 
    Document   : arithmeticCalculator
    Created on : Jan 28, 2023, 5:03:07 PM
    Author     : Ben Lam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form method="post" action="arithmetic">
            <label>First:</label>
            <input type="text" name="firstNumber" value="${firstNumber}"/>
            <br>
            <label>Second:</label>
            <input type="text" name="secondNumber" value="${secondNumber}"/>
            <br>
            <input type="submit" name="symbol" value="+"/>
            <input type="submit" name="symbol" value="-"/>
            <input type="submit" name="symbol" value="*"/>
            <input type="submit" name="symbol" value="%"/>
            <br>
            <p>${message}</p>
            <br>
           
        </form>
             <a href="age" >Age Calculator</a>
    </body>
</html>