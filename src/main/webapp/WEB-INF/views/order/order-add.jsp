<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Order</title>
</head>
<body>
<h1>Add Order</h1>
<form:form modelAttribute="order" action="${pageContext.request.contextPath}/order/add" method="post">
    <label>Account:</label>
    <form:select path="account.id">
        <c:forEach items="${accounts}" var="account">
            <form:option value="${account.id}">${account.username}</form:option>
        </c:forEach>
    </form:select>
    <br>
    <label>Total Price:</label>
    <form:input path="totalPrice" type="number"></form:input>
    <br>
    <label>Status:</label>
    <form:input path="status" />
    <br>
    <label>Order Date:</label>
    <form:input path="orderDate" type="date"></form:input>
    <br>
    <label>Products:</label>
    <c:forEach items="${products}" var="product">
        <input type="checkbox" name="products" value="${product.id}">${product.name}<br>
    </c:forEach>
    <br>
    <input type="submit" value="Add Order">
</form:form>
</body>
</html>