<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Detail</title>
</head>
<body>
<h1>Product Detail</h1>

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
    <tr>
        <td>${product.id}</td>
        <td>${product.name}</ td>
        <td>${product.price}</td>
        <td>${product.discount}</td>
        <td>${product.stock}</td>
        <td>${product.description}</td>
        <td>${product.imageUrl}</td>
        <td>${product.category.name}</td>
    </tr>
</table>
</body>
</html>