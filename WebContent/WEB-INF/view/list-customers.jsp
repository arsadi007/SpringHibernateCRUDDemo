<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer List</title>
	<!-- reference our css style -->
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>	
	<div id="container">
		<div id="content">
		
			<!-- put a new button: Add customer  -->
			<input type="button" value="Add Customer"
				   onclick="window.location.href='showFormForAdd'; return false;"
				   class="add-button"
				   />
			<!-- add our html table here -->
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				<!-- loop over and print our customer -->
				<c:forEach var="tempCustomers" items="${customers}">
				
				<!-- construct an "update" link with customer id -->
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerId" value="${tempCustomers.id}"></c:param>
				</c:url>
				
				<!-- construct an "delete" link with customer id -->
				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerId" value="${tempCustomers.id}"></c:param>
				</c:url>
				
					<tr>
						<td> ${tempCustomers.firstName}</td>
						<td> ${tempCustomers.lastName}</td>
						<td> ${tempCustomers.email}</td>
						<!-- display the update link -->
						<td>
							<a href="${updateLink}">Update</a>
							|
							<a href="${deleteLink}"
							onclick="if(!(confirm('Are You Sure You Want To Delete This Customer?'))) return false">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			
		</div>	
	</div>
	

</body>
</html>