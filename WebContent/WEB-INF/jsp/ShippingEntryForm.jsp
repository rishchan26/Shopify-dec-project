<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/../css/main.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<style>
	body {
		font-family: sans-serif;
	} 
	input[type="submit"] {
		background: green;
		border: 0px solid;
		color: white;
		padding: 20px;
		margin: 10px;
		cursor: pointer;
	}
	td {
		padding: 20px;
	}
	form {
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		text-align: center;
	}
	th {
		padding: 20px;
		font-size: 1.2rem;
	}
	input[type="text"] {
		border: 1px solid black;
		padding: 6px;
		text-align: center;
	}
	input:read-only {
		border: 0px solid;
	}
</style>
<meta charset="UTF-8">
<title>Shopify</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form:form modelAttribute="shippingInfo" method="post" action="submitShipping">    
	<table>
	<tr>
		<td colspan="2">
			<h1>Enter shipping details: </h1>
		</td>
	</tr>
		<tr>
			<td>
				Name: 
			</td>
			<td>
				<form:input path="name" />
			</td>
		</tr>
		<tr>
			<td>
				Address Line 1: 
			</td>
			<td>
				<form:input path="addressLine1" />
			</td>
		</tr>
		<tr>
			<td>
				Address Line 2: 
			</td>
			<td>
				<form:input path="addressLine2" />
			</td>
		</tr>
		<tr>
			<td>
				City: 
			</td>
			<td>
				<form:input path="city" />
			</td>
		</tr>
		<tr>
			<td>
				State: 
			</td>
			<td>
				<form:input path="state" />
			</td>
		</tr> 
		<tr>
			<td>
				ZIP: 
			</td>
			<td>
				<form:input path="zip" />
			</td>
		</tr>   
		<tr>
			<td colspan="2">
				<input type="submit" value="Confirm Address">
			</td>  
		</tr>
	</table>
</form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>