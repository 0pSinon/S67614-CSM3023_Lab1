<%-- 
    Document   : AttributeIsSet
    Created on : 31 Mar 2024, 2:48:52 pm
    Author     : Iqbal Rauf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.math.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
    </head>
    <body>
        <% session.setAttribute("user","Fouad Abdulameer");%>
        <a href="GetAttribute.jsp">Click Here to get user name</a>
        <p>
            <a href="MathematicsOperations.jsp">Result of mathematics operations</a></p>
    </body>
</html>
