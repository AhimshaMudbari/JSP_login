<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
} %>
<h3>Main home page</h3>
<br>
<iframe width="560" height="315" src="https://www.youtube.com/embed/r8cor2x3l2o"  frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>
<br>
<form action="Logout" method="post">
<Button type="submit">Logout</Button>
</form>
</body>
</html>