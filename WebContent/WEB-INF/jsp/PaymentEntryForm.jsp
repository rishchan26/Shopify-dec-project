<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopify</title>
</head>
<body>
<form:form modelAttribute="paymentInfo" method="post" action="submitPayment">    
	<table>
		<tr>
			<td>
				Credit Card Number: 
			</td>
			<td>
				<form:input path="cardNumber" />
			</td>
		</tr>
		<tr>
			<td>
				Expiration Date: 
			</td>
			<td>
				<form:input path="expirationDate" />
			</td>
		</tr>
		<tr>
			<td>
				CVV Code: 
			</td>
			<td>
				<form:input path="cvvCode" />
			</td>
		</tr>
		<tr>
			<td>
				Card Holder Name: 
			</td>
			<td>
				<form:input path="cardHolderName" />
			</td>
		</tr>  
		<tr>
			<td colspan="2">
				<input type="submit" value="Add Payment Method">
			</td>  
		</tr>
	</table>
</form:form>
</body>
</html>