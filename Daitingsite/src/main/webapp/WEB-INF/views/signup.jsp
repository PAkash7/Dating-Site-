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
			<h2>Signup</h2>
		</div>

		<div class="container mt-5">
			<form action="signdata" method="post">
				<div class="card"
					style="left: 20%; margin: 50px; padding: 20px; width: 50%; border-radius: 20px; background-color: rgb(238, 223, 204)">
					<div class="form-group">
						<label>Gender    </label>
						<input type="radio" id="contactChoice1" name="gender"
							value="Male" /> <label for="contactChoice1">Male</label> 
						<input type="radio" id="contactChoice2" name="gender" value="Female" />
						<label for="contactChoice2">Female</label>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Enter name"
							name="name">
					</div>

					<div class="form-group">
						<input type="number" class="form-control" placeholder="Age"
							name="age">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Profession"
							name="profession">
					</div>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="Hobbies"
							name="hobbies">
					</div>
					<div class="form-group">
						<input type="textarea" class="form-control" placeholder="Bio"
							name="bio">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="Password"
							name="password">
					</div>

					<c:if test="${not empty msg}">
						<div class="alert alert-success">
							<b><c:out value="${msg}"></c:out></b>
						</div>
					</c:if>
					<button class="btn btn-primary" type="submit">Signup</button>
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



