<%@page import="com.model.LoginBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.getAttribute("details");

out.print(session.getAttribute("details"));
%>

<%
 LoginBean obj=(LoginBean)request.getAttribute("userdetails");

out.println("name of user=   "+ obj.getUsername());
/* out.println("name of address=   "+ obj.getAddress()); */ 

%>
</body>
</html>