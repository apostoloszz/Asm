<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Order List</title>
</head>
<body>
<h1>Order List</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Account</th>
        <th>Total Price</th>
        <th>Status</th>
        <th>Order Date</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${orders}" var="order">
        <tr>
            <td>${order.id}</td>
            <td>${order.account.username}</td>
            <td>${order.totalPrice}</td>
            <td>${order.status}</td>
            <td>${order.orderDate}</td>
            <td>
                <a href="${pageContext.request.contextPath}/order/edit/${order.id}">Edit</a>
                <a href="${pageContext.request.contextPath}/order/delete/${order.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/order/add">Add New Order</a>
</body>
</html>