<%-- 
    Document   : login
    Created on : Feb 15, 2022, 2:47:13 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>input your information:</h1>
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required="" placeholder="input your id"></br>
            password<input type="text" name="password" required="" placeholder="input your password"></br>
            <input type="submit" name="action" value="Login"/>
            <input type="reset" value="Reset"/>
        </form> 
        ${requestScope.ERROR}
            <a href="create.jsp" >create new User</a>
            <a href="shopping.jsp" > Shopping page</a>
    </body>
</html>
