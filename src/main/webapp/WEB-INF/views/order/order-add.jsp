<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Order</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Add Order</h1>
    <form:form modelAttribute="order" action="${pageContext.request.contextPath}/order/add" method="post" class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2" for="account">Account:</label>
            <div class="col-sm-10">
                <form:select path="account.id" class="form-control" id="account">
                    <c:forEach items="${accounts}" var="account">
                        <form:option value="${account.id}">${account.username}</form:option>
                    </c:forEach>
                </form:select>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="totalPrice">Total Price:</label>
            <div class="col-sm-10">
                <form:input path="totalPrice" type="number" class="form-control" id="totalPrice"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="status">Status:</label>
            <div class="col-sm-10">
                <form:input path="status" class="form-control" id="status"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="orderDate">Order Date:</label>
            <div class="col-sm-10">
                <form:input path="orderDate" type="date" class="form-control" id="orderDate"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="products">Products:</label>
            <div class="col-sm-10">
                <c:forEach items="${products}" var="product">
                    <div class="form-check">
                        <input type="checkbox" name="products" value="${product.id}" class="form-check-input">
                        <label class="form-check-label">${product.name}</label>
                    </div>
                </c:forEach>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" value="Add Order" class="btn btn-primary">
            </div>
        </div>
    </form:form>
</div>
</body>
</html>