<%-- 
    Document   : admin
    Created on : Feb 15, 2022, 3:25:26 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <%--xác thực phân quyền--%>
        <c:if test="${sessionScope.LOGIN_USER==null or sessionScope.LOGIN_USER.roleID ne 'AD'}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
        <%--WELCOME--%>
        Welcome :<h1> ${sessionScope.LOGIN_USER.fullName} </h1>
        <!-- logout1 --> 
        <a href="MainController?action=Logout">logout</a>

        <!-- logout2 -->
        <form action="MainController" method="POST">
            <input type="submit" name="action" value="Logout"/>
        </form>

        <!--logout sử dụng JSTL -->
        <c:url var="logout" value="MainController">
            <c:param name="action" value="Logout"></c:param>
        </c:url>
        <a href="${logout}">Logout JSTL</a>

        <!-- search-->
        <form action="MainController">
            Search<input type="text" name="search" required="" value="${param.search}"/>
            <input type="submit" name="action" value="Search"/>
        </form>

        <c:if test="${requestScope.LIST_USER !=null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>USER ID</th>
                            <th>FULL NAME</th>
                            <th>ROLE ID</th>
                            <th>PASSWORD</th>
                            <th>UPDATE</th>
                            <th>DELETE</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${requestScope.LIST_USER}" varStatus="counter">
                        <form action="MainController" method="POST">
                            <tr>
                                <td>${counter.count}</td>
                                <td>${user.userID}</td>
                                <td>
                                    <%--${user.fullName}--%>
                                    <input type="text" name="fullName" value="${user.fullName}" required=""/>
                                </td>
                                <td>
                                    <%--${user.roleID}--%>
                                    <input type="text" name="roleID" value="${user.roleID}" required=""/>
                                </td>
                                <td>${user.password}</td>
                                <td>
                                    <input type="submit" name="action" value="Update"/>
                                    <input type="hidden" name="userID" value="${user.userID}"/>
                                    <input type="hidden" name="search" value="${param.search}"/>
                                </td>
                                <td>
                                    <c:url var ="delete" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="userID" value="${user.userID}"></c:param>
                                        <c:param name="search" value="${param.search}"></c:param>
                                    </c:url>
                                    <a href="${delete}">Delete</a>
                                </td>
                                
                            </tr>
                        </form>

                    </c:forEach>

                </tbody>
            </table>
            ${requestScope.ERROR}
            ${requestScope.SUCCESS}
        </c:if>
    </c:if>
</body>
</html>
