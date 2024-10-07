<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin</title>
</head>
<body>
<h1>Admin</h1>

<h2>Product Management</h2>

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
        </tr>
    </c:forEach>
</table>

<h2>Order Management</h2>

<table border="1 ">
    <tr>
        <th>ID</th>
        <th>Account</th>
        <th>Total</th>
        <th>Order Date</th>
    </tr>
    <c:forEach items="${orders}" var="order">
        <tr>
            <td>${order.id}</td>
            <td>${order.account.username}</td>
            <td>${order.total}</td>
            <td>${order.orderDate}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>