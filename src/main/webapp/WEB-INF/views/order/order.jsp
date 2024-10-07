<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Order List</title>
    <link rel="stylesheet" type="text/css" href="../style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <div class="form-container">
        <h1 class="form-title text-center">Order List</h1>
        <table class="table table-bordered table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>Account</th>
                <th>Total Price</th>
                <th>Status</th>
                <th>Order Date</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${orders}" var="order">
                <tr>
                    <td>${order.id}</td>
                    <td>${order.account.username}</td>
                    <td>${order.totalPrice}</td>
                    <td>${order.status}</td>
                    <td>${order.orderDate}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/order/edit/${order.id}" class="btn btn-custom">Edit</a>
                        <a href="${pageContext.request.contextPath}/order/delete/${order.id}" class="btn btn-danger">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/order/add" class="btn btn-custom">Add New Order</a>
    </div>
</div>
</body>
</html>