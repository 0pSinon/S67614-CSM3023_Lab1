<%-- 
    Document   : useJavaObject
    Created on : 31 Mar 2024, 2:40:36 pm
    Author     : Iqbal Rauf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using Java's object in JSP Page</title>
    </head>
    <body>
        <h1>Display Current Date and perform Auto refresh Header</h1>
    
        <%
            Date todayDate = new Date();
            out.println("<p>Current date and time is "+todayDate.toString()+"<p>");
        %>
        
        <%
            response.setIntHeader("Refresh",5);
        %>
        
    </body>
</html>
