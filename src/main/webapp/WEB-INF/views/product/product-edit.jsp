<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .form-container {
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        .form-title {
            font-weight: bold;
            color: #007bff;
            margin-bottom: 20px;
        }

        .btn-custom {
            background-color: #28a745;
            color: white;
            border-radius: 25px;
        }

        .btn-custom:hover {
            background-color: #218838;
        }

    </style>
</head>
<body>
<div class="container mt-5">
    <div class="form-container">
        <h1 class="form-title text-center">Edit Product</h1>
        <form:form modelAttribute="product" action="${pageContext.request.contextPath}/product/edit/${product.id}"
                   method="post" enctype="multipart/form-data" class="form-horizontal">
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
                    <input type="file" name="image" id="image" class="form-control-file" required/>
                    <input type="text" class="form-control mt-2" id="imageUrl" value="${product.imageUrl}" readonly>
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
                    <input type="submit" value="Save Changes" class="btn btn-custom"/>
                </div>
            </div>
        </form:form>
    </div>
</div>
</body>
</html>