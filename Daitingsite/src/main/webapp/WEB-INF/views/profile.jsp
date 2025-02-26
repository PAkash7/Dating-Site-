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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Login Page</title>
</head>
<s:url var="url_bg" value="/resources/image/bg3.jpg" />
<body background="${url_bg}">
	<div class="text-center">
		<h1>My Profile</h1>
		<div class="container mt-4" style="margin: 25%">
				<div class="card" style="margin: 50px; padding: 20px; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
					<div class="col-md-14">
						<strong>Name:   </strong> <c:out value="${User.name }"></c:out>
					</div>
				</div>
				<div class="card" style="margin: 50px; padding: 20px; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
					<div class="col-md-14">
						<strong>Age:   </strong> <c:out value="${User.age}"></c:out>
					</div>
				</div>
				<div class="card" style="margin: 50px; padding: 20px; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
					<div class="col-md-14">
						<strong>Profession:  </strong> <c:out value="${User.profession}"></c:out>
					</div>
				</div>
				<div class="card" style="margin: 50px; padding: 20px; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
					<div class="col-md-14">
						<strong>Hobbies:  </strong> <c:out value="${User.hobbies}"></c:out>
					</div>
				</div>
				<div class="card" style="margin: 50px; padding: 20px; width: 50%; border-radius: 20px; background-color: rgb(238, 223, 204)">
					<div class="col-md-14">
						<strong>Bio:  </strong> <c:out value="${User.bio}"></c:out>
					</div>
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