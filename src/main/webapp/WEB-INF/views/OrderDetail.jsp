<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Detail</title>
</head>
<body>
<h1>Order Detail</h1>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Account</th>
        <th>Total</th>
        <th>Order Date</th>
    </tr>
    <tr>
        <td>${order.id}</td>
        <td>${order.account.username}</td>
        <td>${order.total}</td>
        <td>${order.orderDate}</td>
    </tr>
</table>

<h2>Order Items</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Product</th>
        <th>Quantity</th>
        <th>Price</th>
    </tr>
    <c:forEach items="${orderItems}" var="orderItem">
        <tr>
            <td>${orderItem.id}</td>
            <td>${orderItem.product.name}</td>
            <td>${orderItem.quantity}</td>
            <td>${orderItem.price}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>