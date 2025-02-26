<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="s" uri="http://www.springframework.org/tags"%>
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
<s:url var="url_bg" value="/resources/image/bg.jpg" />
<body background="${url_bg}">

	<!--Navbar-->
	<nav
		class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar" style="color:black">
		<div class="container">
			<a class="navbar-brand" href="#"> <strong>Dating website</strong></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent-7"
				aria-controls="navbarSupportedContent-7" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent-7">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="/Datingsite/friends/${id}">
							Friends
					</a></li>
					<li class="nav-item"><a class="nav-link" href="/Datingsite/requests/${id}">Requests</a></li>
					<li class="nav-item"><a class="nav-link" href="/Datingsite/profile/${id}">Profile</a></li>
					
				</ul>
				<img src="<c:url value="/resources/image/${gender}.png" />" alt=""
						class="img-fluid" style="width: 40px; height: 40px">
			</div>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			<b><c:out value="${msg}"></c:out></b>
		</div>
	</c:if>
	<c:forEach items="${list}" var="l">
		<div class="card"
			style="left: 25%; width: 50%; height: 200px; border-radius: 20px; background-color: rgb(200, 120, 100)">
			<div class="row">
				<div class="col fadeInLeft" data-wow-delay="0.3s" style="left: 10%">
					<h5 class="h1-responsive font-weight-bold mt-sm-1">${l.name }
						<i>@${l.id }</i>
					</h5>
					<h6>Work as ${l.profession }</h6>
					<h6>Interested in ${l.hobbies }</h6>
					<hr>
					${l.bio}
					<form action="/Datingsite/request/${id}/${l.id}">
						<button class="btn btn-primary" type="submit">Send
							Request</button>
					</form>
				</div>
				<div class="col fadeInRight" data-wow-delay="0.3s">
					<img src="<c:url value="/resources/image/${l.gender}.png" />"
						alt="" class="img-fluid" style="width: 200px; height: 200px">
				</div>
			</div>
		</div>
		<br>
	</c:forEach>
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


