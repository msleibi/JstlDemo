<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<c:set var="str" value="I am Java Programmer" />

*** Length Function ***
<br>
Length: ${fn:length(str)}

<br><br>



 *** Split Function ***
<br>
<c:forEach items="${fn:split(str,' ')}" var="s">
 ${s}
<br>

</c:forEach>

<br><br>

 *** IndexOf Function ***
 <br>

${fn:indexOf(str,"am")}


<br><br>

*** Contains & EndsWith Function ***

 <br>

Is there a Java word ? <c:if test="${fn:contains(str,'Java')}">
 Java is there
</c:if>


<br>

Does it end with Programmer word ? <c:if test="${fn:endsWith(str,'Programmer')}">
 Yes!
</c:if>

<br>

</body>
</html>