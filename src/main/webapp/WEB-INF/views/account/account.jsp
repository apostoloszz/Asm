<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Account List</title>
</head>
<body>
<h1>Account List</h1>
<table>
    <tr>
        <th>ID</th>
        <th>Username</th>
        <th>Email</th>
        <th>Admin</th>
        <th>Active</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${accounts}" var="account">
        <tr>
            <td>${account.id}</td>
            <td>${account.username}</td>
            <td>${account.email}</td>
            <td>${account.isAdmin == 1 ? 'Admin' : 'User '}</td>
            <td>${account.isActive == 1 ? 'Active' : 'Inactive'}</td>
            <td>
                <a href="${pageContext.request.contextPath}/account/edit/${account.id}">Edit</a>
                <a href="${pageContext.request.contextPath}/account/delete/${account.id}">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
<a href="${pageContext.request.contextPath}/account/add">Add New Account</a>
</body>
</html>