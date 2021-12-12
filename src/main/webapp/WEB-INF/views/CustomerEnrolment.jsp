<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Customer Information</title>
</head>

<body>

	<div class="container">
		<h1 style="background-color: green; color: white">CUSTOMER
			RELATIONSHIP MANAGEMENT</h1>
		<hr>

		<p class="h4 mb-4">Save Customer</p>

		<form action="/CustomerRelationshipManagement/customers/save"
			method="POST">

			<!-- Display table user interface -->
			<table style="width:60%">
				<tbody>
					<tr>
						<!-- Add hidden form field to handle update -->
						<td><input type="hidden" name="id" value="${customer.id}" />
						</td>
						<td />
					</tr>
					<tr>
						<td style="width:15%"><p>First Name:</p></td>
						<td style="width:85%"><div class="form-inline">
								<input type="text" name="firstName"
									value="${customer.firstName}">
							</div></td>
					</tr>
					<tr>
						<td style="width:15%"><p>Last Name:</p></td>
						<td style="width:85%"><div class="form-inline">
								<input type="text" name="lastName" value="${customer.lastName}">
							</div></td>
					</tr>
					<tr>
						<td style="width:15%"><p>Email:</p></td>
						<td style="width:85%"><div class="form-inline">
								<input type="text" name="email" value="${customer.email}">
							</div></td>
					</tr>
					<tr>
						<td style="width:30%" />
						<td style="width:70%"><button type="submit" class="btn btn-info col-4">Save</button>
						</td>
					</tr>
				</tbody>
			</table>
		</form>

		<hr>

		<a href="/CustomerRelationshipManagement/customers/list">Back to
			List</a>

	</div>
</body>

</html>
