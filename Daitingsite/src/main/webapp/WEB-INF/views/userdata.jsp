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
<s:url var="url_bg" value="/resources/image/bg1.jpg" />
<body background="${url_bg}">

	<div class="text-center">
		<div class="card"
			style="left: 25%; width: 50%; border-radius: 20px; background-color: rgb(200, 120, 100)">
			<h1>ONLINE DATING SYSTEM</h1>
			<h2>User Data</h2>
		</div>

		<c:if test="${not empty msg}">
			<div class="alert alert-success">
				<h4>
					<b><c:out value="${msg}"></c:out></b>
				</h4>
			</div>
		</c:if>

		<div class="container mt-3">
			<div class="card"
				style="left: 10%; margin: 20px; padding: 20px; width: 75%; border-radius: 10px; background-color: rgb(200, 120, 100)">
				<div class="row">
					<table class="table">
						<thead class="thead">
							<tr>
								<th scope="col">Id</th>
								<th scope="col">Name</th>
								<th scope="col">Gender</th>
								<th scope="col">Age</th>
								<th scope="col">Profession</th>
								<th scope="col">Hobbies</th>
								<th scope="col">Bio</th>
								<th scope="col">Password</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="l">
								<tr>
									<th>${l.id}</th>
									<td><c:out value="${l.name}"></c:out></td>
									<td><c:out value="${l.gender}"></c:out></td>
									<td><c:out value="${l.age}"></c:out></td>
									<td><c:out value="${l.profession}"></c:out></td>
									<td><c:out value="${l.hobbies}"></c:out></td>
									<td><c:out value="${l.bio}"></c:out></td>
									<td><c:out value="${l.password}"></c:out></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
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