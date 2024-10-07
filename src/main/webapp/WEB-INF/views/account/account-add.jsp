<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Account</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Add Account</h1>
    <form:form modelAttribute="account" action="${pageContext.request.contextPath}/account/add" method="post" class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2" for="username">Username:</label>
            <div class="col-sm-10">
                <form:input path="username" class="form-control" id="username" placeholder="Enter username"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <form:input path="email" class="form-control" id="email" placeholder="Enter email"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="password">Password:</label>
            <div class="col-sm-10">
                <form:input path="password" class="form-control" id="password" placeholder="Enter password"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="isAdmin">Admin:</label>
            <div class="col-sm-10">
                <div class="form-check">
                    <input type="checkbox" name="isAdmin" value="1" ${account.isAdmin == 1 ? 'checked' : ''} class="form-check-input" id="isAdmin">
                    <label class="form-check-label" for="isAdmin">Admin</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="isActive">Active:</label>
            <div class="col-sm-10">
                <div class="form-check">
                    <input type="checkbox" name="isActive" value="1" ${account.isActive == 1 ? 'checked' : ''} class="form-check-input" id="isActive">
                    <label class="form-check-label" for="isActive">Active</label>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" value="Add Account" class="btn btn-primary"/>
            </div>
        </div>
    </form:form>
</div>
</body>
</html>