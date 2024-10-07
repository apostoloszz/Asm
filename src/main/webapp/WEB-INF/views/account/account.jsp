<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Account List</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Account List</h1>
    <table class="table table-bordered table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Email</th>
            <th>Admin</th>
            <th>Active</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${accounts}" var="account">
            <tr>
                <td>${account.id}</td>
                <td>${account.username}</td>
                <td>${account.email}</td>
                <td>${account.isAdmin == 1 ? 'Admin' : 'User  '}</td>
                <td>${account.isActive == 1 ? 'Active' : 'Inactive'}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/account/edit/${account.id}" class="btn btn-primary">Edit</a>
                    <a href="${pageContext.request.contextPath}/account/delete/${account.id}" class="btn btn-danger">Delete</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="${pageContext.request.contextPath}/account/add" class="btn btn-custom">Add New Account</a>
</div>
</body>
</html>