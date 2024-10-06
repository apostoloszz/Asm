<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Cart</title>
</head>
<body>
<h1>Add Cart</h1>
<form action="${pageContext.request.contextPath}/cart/add" method="post">
    <label>Account:</label>
    <select name="account.id">
        <c:forEach items="${accounts}" var="account">
            <option value="${account.id}">${account.username}</option>
        </c:forEach>
    </select>
    <br>
    <label>Total:</label>
    <input type="number" name="total" required>
    <br>
    <input type="submit" value="Add Cart">
</form>
</body>
</html>