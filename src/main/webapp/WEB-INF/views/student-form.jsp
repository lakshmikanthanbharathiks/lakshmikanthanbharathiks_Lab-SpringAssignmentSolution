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
<title>Student Form for ${mode}</title>
</head>
<body>
	<div class="container">
		<h3> Student Form for ${mode} </h3>
		<hr>
		<p class="h4 mb-4">Enter Student Details</p>
		<form action="/student/save" method="POST">
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="id" value="${student.id}" />
			<div class="form-inline">
				<input type="text" name="firstName" required="required" value="${student.firstName}"
					class="form-control mb-4 col-4" placeholder="FirstName">
			</div>
			<div class="form-inline">
				<input type="text" name="lastName" required="required" value="${student.lastName}"
					class="form-control mb-4 col-4" placeholder="LastName">
			</div>
			<div class="form-inline">
				<input type="text" name="course" required="required" value="${student.course}"
					class="form-control mb-4 col-4" placeholder="Course">
			</div>
			<div class="form-inline">
				<input type="text" name="country" required="required" value="${student.country}"
					class="form-control mb-4 col-4" placeholder="Country">
			</div>
			<button type="submit" class="btn btn-info col-2">Save</button>
		</form>
		<hr>
		<a href="/student/list">Back to Students List</a>
	</div>
</body>
</html>