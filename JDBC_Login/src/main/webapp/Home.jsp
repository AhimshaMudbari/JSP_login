<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="home.css">
</head>
<body>
<%
response.setHeader("cache-control","no-cache,no-store,must-revalidate");
response.setHeader("pragma", "no-cache");
response.setHeader("Expires", "0");

if(session.getAttribute("uname")==null){
		response.sendRedirect("Login.jsp");
}
%>
<section id="header">
	<div class="first">
	<ul>
		<a href="#header"><li>Home</li></a>
		<a href=""><li>About</li></a>
	</ul>
	</div>
	<div class="second">
		<form action="Logout" method="post">
			<button class="btn">Logout</button>
		</form>
	</div>
</section>
<section id="body">
<div class="body-part">
<h1>Logout Test in JDBC<span><form action="Logout" method="post">
			<button class="button"><img alt="" src="https://img.icons8.com/ios-filled/344/exit.png" height="70" width="70"><span>Logout</span></button>
		</form></span>
</h1>
</div>
</section>
<footer class="footer">
<h1 style="color:white; padding-top:40px; padding-left:15px; ">Developed By:- Ahim Mudbari</h1>
<pre style="color:tan; padding:10px">Implementation of Call to action button,
Header part having three components 
and the footer part having this message 
Bcause i dont have anything to write</pre>
<p class="h4" style="color:black; text-align:center;">Copyright@ Ahim Mudbari-2022</p>
</footer>
</body>
</html>