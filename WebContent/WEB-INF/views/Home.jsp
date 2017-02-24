<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page
	import="com.mysociety.common.*, 
	java.util.*"
%>

<html>
<head>
	<title>Home Page</title>
</head>

<%
	String userId = (String) session.getAttribute(LoginConstants.SESSION_VARIABLE_KEY_USERID);
%>

<body>
	<%@ include file="NavBar.jsp" %>
	<br>
	Welcome! <%=userId%> - Home Page.
</body>
</html>