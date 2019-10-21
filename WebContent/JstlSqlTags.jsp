<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3308/ishop" user="root" password="ishop" /> 

<sql:query var="rs" dataSource="${db}">select * from ishop_mcs;</sql:query>

<c:forEach items="${rs.rows}" var="mcs">

<c:out value="${mcs.id}"></c:out> || <c:out value="${mcs.display_name}"></c:out> || <c:out value="${mcs.short_name}"></c:out>
<br>


</c:forEach>

</body>
</html>