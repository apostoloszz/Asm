<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Add Category</title>
</head>
<body>
<h1>Add Category</h1>
<form action="${pageContext.request.contextPath}/category/add" method="post">
    <label>Name:</label>
    <input type="text" name="name" required>
    <br>
    <input type="submit" value="Add Category">
</form>
</body>
</html>