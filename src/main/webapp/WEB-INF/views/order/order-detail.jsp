<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Order Detail</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Order Detail</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Product</th>
            <th>Quantity</th>
            <th>Price</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${order.orderDetails}" var="orderDetail">
            <tr>
                <td>${orderDetail.product.name}</td>
                <td>${orderDetail.quantity}</td>
                <td>${orderDetail.price}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>