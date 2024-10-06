<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Account</title>
</head>
<body>
<h1>Edit Account</h1>
<form action="${pageContext.request.contextPath}/account/edit/${account.id}" method="post">
    <label>Username:</label>
    <input type="text" name="username" value="${account.username}" required>
    <br>
    <label>Email:</label>
    <input type="email" name="email" value="${account.email}" required>
    <br>
    <label>Password:</label>
    <input type="password" name="password" value="${account.password}" required>
    <br>
    <label>Admin:</label>
    <input type="checkbox" name="isAdmin" value="1" ${account.isAdmin == 1 ? 'checked' : ''}>
    <br>
    <label>Active:</label>
    <input type="checkbox" name="isActive" value="1" ${account.isActive == 1 ? 'checked' : ''}>
    <br>
    <input type="submit" value="Save Changes">
</form>
</body>
</html>