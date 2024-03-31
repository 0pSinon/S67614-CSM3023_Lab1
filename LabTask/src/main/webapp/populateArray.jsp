<%-- 
    Document   : populateArray
    Created on : 31 Mar 2024, 3:29:30 pm
    Author     : Iqbal Rauf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en  ">
    <head>
        <meta charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>Populate Array</title>
        <style>
            table{
                border-collapse: collapse;
                width: 100%;
            }
            th,td{
                border : 1px solid black;
                padding: 3px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%
            String [][] salesData = {
                {"Salesman","Jan","Feb","Mar"},
                {"Salesman 1","2500","2100","2300"},
                {"Salesman 2","2000","1900","2400"},
                {"Salesman 3","1800","2200","2450"}
            };
            request.setAttribute("salesData",salesData);
        %>
        
        <h2>Read Java array and populate it into HTML table<h2>
        <table id="salesTable">
            <thead>
                <tr>
                    <% for (String header : salesData[0]) {%>
                    <th><%= header %></th>
                    <% } %>
                </tr>
            </thead>
            <tbody>
                <% for (int i =1;i<salesData.length;i++){%>
                <tr>
                    <% for (String value : salesData[i]) {%>
                    <td><%=value %></td>
                    <% } %>
                </tr>
                <% } %>
            </tbody>
    </body>
</html>
