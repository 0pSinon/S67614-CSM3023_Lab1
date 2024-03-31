<%-- 
    Document   : calculateArea
    Created on : 31 Mar 2024, 3:56:56 pm
    Author     : Iqbal Rauf
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Scanner" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Area Result</title>
    </head>
    <body>
        <h1>Area Result</h1>

        <% String radiusStr = request.getParameter("radius"); %>

        <% if (radiusStr != null && radiusStr.matches("\\d+")) { %>

            <% int radius = Integer.parseInt(radiusStr); %>

            <% double area = Math.PI * radius * radius; %>

            <% DecimalFormat df = new DecimalFormat("#.##"); %>

            <p>The area of the circle with radius <%= radius %> is <%= df.format(area) %>.</p>
        <% } else { %>
            
            <p>Please enter a valid number for the radius.</p>
        <% } %>
    </body>
</html>
