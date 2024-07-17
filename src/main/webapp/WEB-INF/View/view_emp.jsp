<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
						href="${pageContext.request.contextPath }/add">Add</a></li>
				</ul>
			</div>
		</div>
	</nav>




	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header text-center">
						<h4 class="text">All Details of Employes</h4>
						
						<c:if test="${not empty msg}">
							<h6 class="text-success">${msg}</h6>
							<c:remove var="msg" />
						</c:if>
						
						
					</div>
					<div class="card-body">

						<table class="table">
							<thead>
								<tr>
									<th scope="col">ID</th>
									<th scope="col">Name</th>
									<th scope="col">Email</th>
									<th scope="col">City</th>
									<th scope="col">Contact</th>
									<th scope="col">Salary</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							
							<tbody>
								<c:forEach items="${empList}" var="emp">
								<tr>
										<th scope="row">${emp.id}</th>
										<td>${emp.name}</td>
										<td>${emp.email}</td>
										<td>${emp.city}</td>
										<td>${emp.contact}</td>
										<td>${emp.salary}</td>
										<td><a href="edit_emp/${emp.id}" class="btn btn-sm btn-primary">Edit</a>
										<a href="deleteEmp/${emp.id }" class="btn btn-sm btn-danger">Delete</a> </td>
									</tr>
							</c:forEach> 
							</tbody>
						</table>
						
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>