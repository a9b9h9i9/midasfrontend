<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page isELIgnored="false" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border=1>
<tr>
<th> Product ID </th>
<th> Product Name </th>
<th> Description </th>
<th> Product Type </th>
<th> Price </th>
<th> Product Weight </th>
<th> Product Stock </th>
</tr>

<c:forEach var ="p"  items="${productlist }">
<tr>
<td>${p.productId }</td>
<td>${p.productName }</td>
<td>${p.description }</td>
<td>${p.type }</td>
<td>${p.productPrice }</td>
<td>${p.productWeight }</td>
<td>${p.productStock }</td>
<td><Button>EDIT</Button>
<td><a href="delete_product/${p.productId }">Delete</a></td>

</tr>
</c:forEach>
</table>
</body>
</html>