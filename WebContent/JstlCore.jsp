<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%-- <%
String nameOnJsp = request.getAttribute("label").toString();
out.println("Name without Exp: " + nameOnJsp);
%> --%>

<%-- <h3>Name is: ${label}</h3>	--%> 

<c:out value="${label}" />

<%-- <c:import url="https://www.google.com/"></c:import> --%>

<c:forEach items="${students}" var="s">
${s.name} <br/>
</c:forEach>

</body>
</html>