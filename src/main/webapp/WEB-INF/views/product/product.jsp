<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<h1>Product List</h1>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Price</th>
        <th>Discount</th>
        <th>Stock</th>
        <th>Description</th>
        <th>Image URL</th>
        <th>Category</th>
        <th>Action</th>
    </tr>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.discount}</td>
            <td>${product.stock}</td>
            <td>${product.description}</td>
            <td>${product.imageUrl}</td>
            <td>${product.category.name}</td>
            <td>
                <a href="${pageContext.request.contextPath}/product/edit/${product.id}">Edit</a>
                <a href="${pageContext.request.contextPath}/product/delete/${product.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/product/add">Add New Product</a>
</body>
</html>