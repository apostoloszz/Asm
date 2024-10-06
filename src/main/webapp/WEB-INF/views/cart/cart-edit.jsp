<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Cart</title>
</head>
<body>
<h1>Edit Cart</h1>
<form action="${pageContext.request.contextPath}/cart/edit/${cart.id}" method="post">
    <label>Account:</label>
    <select name="account.id">
        <c:forEach items="${accounts}" var="account">
            <option value="${account.id}" ${cart.account.id == account.id ? 'selected' : ''}>${account.username}</option>
        </c:forEach>
    </select>
    <br>
    <label>Total:</label>
    <input type="number" name="total" value="${cart.total}" required>
    <br>
    <input type="submit" value="Save Changes">
</form>
</body>
</html>