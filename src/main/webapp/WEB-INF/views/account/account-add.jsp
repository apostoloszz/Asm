<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Account</title>
</head>
<body>
<h1>Add Account</h1>
<form:form modelAttribute="account" action="${pageContext.request.contextPath}/account/add" method="post">
    <label>Username:</label>
    <form:input path="username"/>
    <br>
    <label>Email:</label>
    <form:input path="email"/>
    <br>
    <label>Password:</label>
    <form:input path="password"/>
    <br>
    <label>Admin:</label>
    <form:checkbox path="isAdmin" value="1"/>
    <br>
    <label>Active:</label>
    <form:checkbox path="isActive" value="1"/>
    <br>
    <input type="submit" value="Add Account">
</form:form>
</body>
</html>