<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cart Item List</title>
</head>
<body>
<h1> Cart Item List</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Cart</th>
        <th>Product</th>
        <th>Quantity</th>
        <th>Price</th>
    </tr>
    <c:forEach items="${cartItems}" var="cartItem">
        <tr>
            <td>${cartItem.id}</td>
            <td>${cartItem.cart.account.username}</td>
            <td>${cartItem.product.name}</td>
            <td>${cartItem.quantity}</td>
            <td>${cartItem.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>