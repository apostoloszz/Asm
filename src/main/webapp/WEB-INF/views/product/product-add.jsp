<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Add Product</h1>
    <form:form modelAttribute="product" action="${pageContext.request.contextPath}/product/add" method="post" class="form-horizontal" enctype="multipart/form-data">
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="name">Name:</label>
            <div class="col-sm-10">
                <form:input path="name" class="form-control" id="name"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="price">Price:</label>
            <div class="col-sm-10">
                <form:input path="price" class="form-control" id="price"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="discount">Discount:</label>
            <div class="col-sm-10">
                <form:input path="discount" class="form-control" id="discount"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="stock">Stock:</label>
            <div class="col-sm-10">
                <form:input path="stock" class="form-control" id="stock"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="description">Description:</label>
            <div class="col-sm-10">
                <form:textarea path="description" class="form-control" id="description"/>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="image">Image:</label>
            <div class="col-sm-10">
                <input type="file" class="form-control-file" id="image" name="image" required>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label" for="category">Category:</label>
            <div class="col-sm-10">
                <form:select path="category" class="form-control" id="category">
                    <c:forEach items="${categories}" var="category">
                        <form:option value="${category.id}">${category.name}</form:option>
                    </c:forEach>
                </form:select>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10 offset-sm-2">
                <input type="submit" value="Add Product" class="btn btn-primary"/>
            </div>
        </div>
    </form:form>
</div>
</body>
</html>
