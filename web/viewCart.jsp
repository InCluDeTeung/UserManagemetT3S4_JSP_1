<%-- 
    Document   : viewCart
    Created on : Feb 24, 2022, 1:15:43 PM
    Author     : ACER
--%>

<%@page import="sample.shopping.Tea"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW CART Page</title>
    </head>
    <body>
        <h1>Your selected Tea:</h1>
        <%--
        <%
            Cart cart = (Cart) session.getAttribute("CART");
            if (cart != null) {
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>NO</th>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <%
                    int count = 1;
                    double total =0;
                    for (Tea tea : cart.getCart().values()) {
                    total += tea.getPrice()* tea.getQuantity();    
                %> 
               
            <form action="MainController">
                <tr>
                    <td><%= count++%></td>
                    <td><%= tea.getId()%></td> <input type="hidden" name="id" value="<%=tea.getId()%>"/>
                    <td><%= tea.getName()%></td>
                    <td><%= tea.getPrice()%>$</td>
                    <td>
                        <input type="number" name="quantity" value="<%=tea.getQuantity()%>" mid="1" required=""/>
                    </td>
                    <td><%= tea.getQuantity()%></td>
                    <td><%= tea.getPrice() * tea.getQuantity()%> $</td>
                    <td> 
                        <input type="submit" name="action" value="Remove"/>
                    </td>
                    <td> 
                        <input type="submit" name="action" value="Edit"/>
                    </td>   
                </tr>
            </form>
                <%
                   
                    }
                %>
            </tbody>
        </table>
            <h1> Total: <%= total %> $</h1> 
    <%
        }
    %>
    --%>
    <c:if test="${sessionScope.CART !=null}">
        <c:if test="${not empty sessionScope.CART}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Total</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="tea" items="${sessionScope.CART}" varStatus="counter">
                        <form action="MainController" method="POST">
                            <tr>
                                <td>${counter.count}</td>
                                <td>${tea.id}</td> <input type="hidden" name="id" value="${cart.id}"/>
                                <td>${tea.name}</td>
                                <td>${tea.price}</td>
                                <td>
                                    <input type="number" name="quantity" value="${cart.quantity}" mid="1" required=""/>
                                </td>
                                <td>
                                    ${cart.quantity * cart.price} 
                                </td>

                            </tr>
                        </form>

                    </c:forEach>
                    <a href="shopping.jsp"> add More</a>
                    
    </body>
</html>
