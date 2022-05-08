<%-- 
    Document   : user
    Created on : Feb 15, 2022, 3:17:27 PM
    Author     : ACER
--%>

<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <body>
        <h1>Your information:</h1>
        <c:if test="${sessionScope.LOGIN_USER==null or sessionScope.LOGIN_USER.roleID ne 'US'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
    
        User ID:   ${sessionScope.LOGIN_USER.userID} </br>
        Full Name: ${sessionScope.LOGIN_USER.fullName} </br>
        Role ID:   ${sessionScope.LOGIN_USER.roleID} </br>
        Password:  ${"***"} </br>
        
    </body
</html>
