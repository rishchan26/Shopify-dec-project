<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopify</title>
<link rel="stylesheet" href="css/main.css">
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
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<form:form modelAttribute="order" method="post" action="purchase/submitItems">    
	<table>
		<tr>
			<td colspan="3">
				<h1>Hi! Place your order at Shopify</h1>
			</td>
		</tr>
		<tr>
			<th>Item</th>
			<th>Price($)</th>
			<th>Enter Quantity</th>
		</tr>
		<c:forEach items="${order.items}" var="item" varStatus="loop">
			<tr>
				<td>
					<form:input path="items[${loop.index}].name" readonly="true" />
				</td>
				<td>
					<form:input path="items[${loop.index}].price" readonly="true" />
				</td>
				<td>
					<form:input path="items[${loop.index}].quantity" />
				</td>
			</tr>
		</c:forEach>  
			<tr>
				<td colspan="3">
					<input type="submit" value="Purchase">
				</td>  
			</tr>
	</table>
</form:form>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>