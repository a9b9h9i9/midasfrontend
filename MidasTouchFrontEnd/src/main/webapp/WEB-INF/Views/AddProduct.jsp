<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product Page</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<h1>Add a Product</h1>
	

	<form:form action="saveProduct" commandName="product" method="post">
		<table>
			<tr>
				<td>Product Name</td>
				<td><input type="text" name="productName" /></td>
			</tr>
			<tr>
				<td>Description</td>
				<td><input type="text" name="description"></td>
			</tr>
			<tr>
				<td>Type</td>
				<td><input type="text" name="type"></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="productPrice"></td>
			</tr>
			<tr>
				<td>Product Weight</td>
				<td><input type="text" name="productWeight"></td>
			</tr>
			<tr>
				<td>In Stock</td>
				<td><input type=" text" name="productStock"></td>
			</tr>
			<tr>
			<td></td>	
			<td><input type="submit" value="Submit"></td>
			</tr>
		</table>
	</form:form>

	<hr>
	<table>
		<tr>
			<th>Product Id</th>
			<th>Product Name</th>
			<th> Type</th>
			<th> Description</th>
			<th>Price</th>
			<th>In Stock</th>
			<th>Edit/Delete</th>
		</tr>
		<c:forEach var="product" items="${productlist }">
			<tr>
				<td>${product.productId }</td>
				<td>${product.productName }</td>
				<td>${product.type }</td>
				<td>${product.description }</td>
				<td>${product.productPrice }</td>
				<td>${product.productStock }</td>
				<td>
				<a href="delete_Product/${product.productId }" class="btn btn-danger" role="button">Delete </a>
		</td>
		<td>
		<a href="edit_Product/${product.productId }"  class="btn btn-success" role="button">Edit</a>
		</td>
			</tr>
		
		
		</c:forEach>
	</table>
</body>
</html>