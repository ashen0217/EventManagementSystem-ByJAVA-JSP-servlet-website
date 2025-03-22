<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${param.success eq 1}">
     <div> 
	<script>
	alert("Your data is successfully inserted !");	
	</script>

	 </div>
	</c:if>
</body>

</html>