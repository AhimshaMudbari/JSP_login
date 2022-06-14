<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
<%
//works on on HTTP 1.1 version so should include pragma, no-cache for older version
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
		response.setHeader("pragma", "no-cache");
		//for proxy server
		response.setHeader("Expires", "0");
if(session.getAttribute("uname")==null){
	response.sendRedirect("login.jsp");
}
%>
Welcome ${uname}<br>
<a href="mainHome.jsp">Click to goto main page</a>
</body>
</html>