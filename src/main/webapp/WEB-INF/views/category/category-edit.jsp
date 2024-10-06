<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Category</title>
</head>
<body>
<h1>Edit Category</h1>
<form action="${pageContext.request.contextPath}/category/edit/${category.id}" method="post">
    <label>Name:</label>
    <input type="text" name="name" value="${category.name}" required>
    <br>
    <input type="submit" value="Save Changes">
</form>
</body>
</html>