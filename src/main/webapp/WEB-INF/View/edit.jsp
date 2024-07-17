<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark  bg-dark">
		<div class="container-fluid">

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link " aria-current="page"
						href="${pageContext.request.contextPath }/show">Back</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<h3>Update Employes Details</h3>

						<c:if test="${not empty msg}">
							<h6 class="text-success">${msg}</h6>
							<c:remove var="msg" />
						</c:if>

					</div>
					<div class="card-body">

						<form action="${pageContext.request.contextPath}/updateEmp"
							method="post">
							
							<input type="hidden" name="id" value="${emp.id}">
							<div class="mb-3">
							
								<label>Full Name</label> <input type="text" name="name"
									class="form-control" placeholder="Enter name"
									value="${emp.name}">
							</div>

							<div class="mb-3">
								<label>Email</label> <input type="text" name="email"
									class="form-control" placeholder="Enter email"
									value="${emp.email}">
							</div>

							<div class="mb-3">
								<label>City</label> <input type="text" name="city"
									class="form-control" placeholder="Enter city"
									value="${emp.city}">
							</div>

							<div class="mb-3">
								<label>Contact</label> <input type="text" name="contact"
									class="form-control" placeholder="Enter contact"
									value="${emp.contact }">
							</div>

							<div class="mb-3">
								<label>Salary</label> <input type="text" name="salary"
									class="form-control" placeholder="Enter salary"
									value="${emp. salary}">
							</div>

							<button type="submit" class="btn btn-primary">Update</button>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>



</body>
</html>