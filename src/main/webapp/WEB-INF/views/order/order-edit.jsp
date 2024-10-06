<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Order</title>
</head>
<body>
<h1>Edit Order</h1>
<form:form modelAttribute="order" action="${pageContext.request.contextPath}/order/edit/${order.id}" method="post">
    <label>Account:</label>
    <form:select path="account.id">
        <c:forEach items="${accounts}" var="account">
            <form:option value="${account.id}">
                ${account.username}
            </form:option>
        </c:forEach>
    </form:select>
    <br>
    <label>Total Price:</label>
    <form:input path="totalPrice" value="${order.totalPrice}"></form:input>
    <br>
    <label>Status:</label>
    <form:input path="status" value="${order.status}"></form:input>
    <br>
    <label>Order Date:</label>
    <form:input path="orderDate" value="${order.orderDate}"></form:input>
    <br>
    <label>Products:</label>
<%--    <c:forEach items="${products}" var="product">--%>
<%--        <input type="checkbox" name="products"--%>
<%--               value="${product.id}"--%>
<%--        <c:if test="${order.orderDetails.stream().anyMatch(od -> od.product.id == product.id)}">--%>
<%--               checked--%>
<%--        </c:if>>--%>
<%--        ${product.name}--%>
<%--        <br>--%>
<%--    </c:forEach>--%>
    <br>
    <input type="submit" value="Save Changes">
</form:form>
</body>
</html>