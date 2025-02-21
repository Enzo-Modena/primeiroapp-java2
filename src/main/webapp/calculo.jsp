<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
    int[] resultado = new int[10];

    for(int i=1; i<= 10;i++) {
        resultado[i-1] = i*5;
    }

    request.setAttribute("resultado", resultado);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
    <body>
        <h1>Cáculo</h1>
        <c:forEach var="valor" items="${resultado}">
            ${valor} <br /> 
        </c:forEach>
        <hr />
        <c:forEach var="num" begin="1" end="10">
            ${num * 5} <br />
        </c:forEach>
    </body>
</html>