<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<body>
	<center>
	<h1 >Insert/Update Details</h1>
	<div class="container">		
		<form:form action="saveCustomer" method="post" modelAttribute="customer">				
			<table class="table table-hover">
				<tbody>
					<tr>
						<td>
							FirstName
						</td>
						<td>
							<form:input path="firstName"/>
						</td>
					</tr>
					
					<tr>
						<td>
							LastName
						</td>
						<td>
							<form:input path="lastName"/>
						</td>
					</tr>
					
					<tr>
						<td>
							Street
						</td>
						<td>
							<form:input path="street"/>
						</td>
					</tr>
					<tr>
						<td>
							Address
						</td>
						<td>
							<form:input path="address"/>
						</td>
					</tr>
					<tr>
						<td>
							City
						</td>
						<td>
							<form:input path="city"/>
						</td>
					</tr>
					<tr>
						<td>
							State
						</td>
						<td>
							<form:input path="state"/>
						</td>
					</tr>
					<tr>
						<td>
							EmailId
						</td>
						<td>
							<form:input path="emailId"/>
						</td>
					</tr>
					<tr>
						<td>
							PhoneNo
						</td>
						<td>
							<form:input path="phoneNo"/>
						</td>
					</tr>
					<tr>
						<td>
							
						</td>
						<td>
							<input type='submit' value='save' class='save'/>
						</td>
					</tr>				
				</tbody>
			</table>	
		</form:form>
	</div>
	</center>	
</body>
</html>