<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Cart List</title>
</head>
<body>
<h1>Cart List</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Account</th>
        <th>Total</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${carts}" var="cart">
        <tr>
            <td>${cart.id}</td>
            <td>${cart.account.username}</td>
            <td>${cart.total}</td>
            <td>
                <a href="${pageContext.request.contextPath}/cart/edit/${cart.id}">Edit</a>
                <a href="${pageContext.request.contextPath}/cart/delete/${cart.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/cart/add">Add New Cart</a>
</body>
</html>