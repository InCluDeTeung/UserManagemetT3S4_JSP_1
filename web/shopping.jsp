<%-- 
    Document   : shopping
    Created on : Feb 24, 2022, 12:37:40 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
    </head>
    <body>
        <h1>Welcome to out tea Farm</h1>
        <form action="MainController">
            <select name="cmbTea">
                <option value="T01-Olong Tea-10">Olong Tea</option>
                <option value="T02-Bubble Tea-20">Bubble Tea</option>
                <option value="T03-Peach Tea-30">Peach Tea</option>
                <option value="T04-Pink Tea-40">Pink Tea</option>
            </select>
            <select name="cmbQuantity">
                <option value="1"> 1</option>
                <option value="2"> 2</option>
                <option value="3"> 3</option>
                <option value="4"> 4</option>
                <option value="5"> 5</option>
                <option value="10"> 10</option>
            </select>
            <input type="submit" name="action" value="Add"/>
            <input type="submit" name="action" value="View"/>
        </form>
        ${requestScope.MESSAGE}        
    </body>
</html>
