<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>
	<h1 style="text-align:center">Customer Details</h1><br><Br>
	<div class="container">
			<input type='button' value='LogOut'
				onclick="window.location.href='./login'; return false;"
				class="btn btn-danger" />
			<br><br>
			<table class="table table-hover">
				<tr>
					<th>FirstName</th>
					<th>LastName</th>
					<th>Street</th>
					<th>Address</th>
					<th>City</th>
					<th>State</th>
					<th>EmailId</th>
					<th>PhoneNo</th>
					<th>Action</th>
				</tr>
				<c:forEach var="customer" items="${customers}">
					
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${customer.id}"/>
					</c:url>
					
					<c:url var="deleteLink" value="/customer/showFormForDelete">
						<c:param name="customerId" value="${customer.id}"/>
					</c:url>
				
					<tr>
						<td>${customer.firstName}</td>
						<td>${customer.lastName}</td>
						<td>${customer.street}</td>
						<td>${customer.address}</td>
						<td>${customer.city}</td>
						<td>${customer.state}</td>
						<td>${customer.emailId}</td>
						<td>${customer.phoneNo}</td>
						<td>
							<a href='${updateLink}'>UPDATE</a>
										|
							<a href="${deleteLink}"
								onclick="if(!(confirm('Are you sure u want to delete this customer?')))return false;">DELETE</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			
			<input type='button' value='Add'
				onclick="window.location.href='showForm'; return false;"
				class="btn btn-success" />
		
	</div>
</body>
</html>