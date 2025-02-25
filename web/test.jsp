<%-- 
    Document   : test
    Created on : 14 May 2024, 01:19:21
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<%@ page isELIgnored="false" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <h1>List of Numbers:</h1>
            <ul>
                <c:forEach begin="1" end="7" var="number">
                    <li>Number: ${number}</li>
                    </c:forEach>
            </ul>
        </h1>
    </body>
</html>
