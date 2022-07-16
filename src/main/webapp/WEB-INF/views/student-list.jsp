<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Student List</title>
</head>
<body>
	<div class="container">
		<h3>Student List</h3>
		<hr>
		<!-- Add a button -->
			<div>
			<a href="/student/showFormForAdd" class="btn btn-primary btn-sm mb-3"> Add New 
				Student </a> </div> 
				
				<div style="padding-left: 80%; padding-right: 0%">
			<a href="/logout" class="btn btn-primary btn-sm mb-3 mx-auto" >
				Logout </a>
		</div>
		<table class="table table-bordered table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Student ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Course</th>
					<th>Country</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${students}" var="student">
					<tr>
						<td><c:out value="${student.id}" /></td>
						<td><c:out value="${student.firstName}" /></td>
						<td><c:out value="${student.lastName}" /></td>
						<td><c:out value="${student.course}" /></td>
						<td><c:out value="${student.country}" /></td>
						<td>
							<!-- Add "update" button/link --> <a
							href="/student/showFormForUpdate?studentId=${student.id}"
							class="btn btn-info btn-sm"> Update </a> <!-- Add "delete" button/link -->
							<a href="/student/delete?studentId=${student.id}" class="btn btn-danger btn-sm"
							onclick="if (!(confirm('Are you sure you want to delete this Student Record?'))) return false">
								Delete </a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
