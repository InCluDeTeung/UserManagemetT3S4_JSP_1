<%-- 
    Document   : create
    Created on : Feb 22, 2022, 2:29:17 PM
    Author     : ACER
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create user Page</title>
    </head>
    <body>
        <h1>CREATE USER!</h1>
        <form action="MainController" method="POST">
            User ID  <input type="text" name="userID" required=""/></br>
           ${requestScope.USER_ERROR.userID}
            Full Name<input type="text" name="fullName" required=""/></br>
           ${requestScope.USER_ERROR.fullName}
            Role ID  <input type="text" name="roleID" required=""/></br>
            Password <input type="text" name="password" required=""/></br>            
            Confirm  <input type="text" name="confirm" required=""/></br>
            ${requestScope.USER_ERROR.confirm}
            <input type="submit" name="action" value="Create"/>
            <input type="reset" value="Reset"/>
    </body>
</html>
