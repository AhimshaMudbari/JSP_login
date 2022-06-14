<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="login.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<div class="main">
	<div class="top">
	<p class="h2">Welcome to login Page</p>
	</div>
	<div class="bottom">
	<form class="form-control" action="LoginPage" method="post">
	UserName: <input type="text" name="uname" class="form-control"><br>
	Password: <input type="password" name="password" class="form-control"><br>
	<Button type="submit" id="button"class="btn btn-primary">Login</Button>
	</form>
	</div>		
</div>
</body>
</html>