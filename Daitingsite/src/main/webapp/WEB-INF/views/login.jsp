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
	<div class="text-center">
		<div class="card"
			style="left: 25%; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
			<h1>ONLINE DATING SYSTEM</h1>
			<h2>Login</h2>
		</div>

		<div class="container mt-5">
			<form action="home" method="post">
				<div class="card" style="left:20%; margin: 50px; padding: 20px; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
					<div class="form-group">
						<input type="text" class="form-control"
							placeholder="Enter id" name="id">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password"
							name="password">
					</div>
					<div class="checkbox mb-3">
						<label> <input type="checkbox" value="remember-me">
							Confirm
						</label>
					</div>
					<c:if test="${not empty msg}">
						<div class="alert alert-success">
							<b><c:out value="${msg}"></c:out></b>
						</div>
					</c:if>
					<c:if test="${not empty id}">
						<div class="alert alert-success">
							<b>Your login id is <c:out value="${id}"></c:out> Remember!!</b>
						</div>
					</c:if>
					<button class="btn btn-primary" type="submit">Login</button>
				</div>
			</form>
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


