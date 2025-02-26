<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Login Page</title>
</head>
<s:url var="url_bg" value="/resources/image/bg3.jpg" />
<body background="${url_bg}">
	<br>
	<div class="text-center">
		<div class="card"
			style="left: 25%; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
			<h1>Online Dating System</h1>
		</div>

		<div class="container mt-5">
			<div class="card"
				style="left: 25%; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
				<form action="login" method="post">
					<h3>Login</h3>
					<h6>Login with your ID and Password to access your Account.</h6>
					<button class="btn btn-primary" type="submit">Login</button>
				</form>
			</div>
		</div>

		<div class="container mt-5">
			<div class="card"
				style="left: 25%; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
				<form action="signup" method="post">
					<h3>SignUp</h3>
					<h6>Signup as a new user</h6>
					<button class="btn btn-primary" type="submit">Login</button>
				</form>
			</div>
		</div>

		<div class="container mt-5">
			<div class="card"
				style="left: 25%; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
				<form action="adminlogin" method="post">
					<h3>Login As Admin</h3>
					<h6>Only for management</h6>
					<button class="btn btn-primary" type="submit">Login</button>
				</form>
			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</body>
</html>


