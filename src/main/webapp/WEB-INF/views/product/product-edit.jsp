<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<h1>Edit Product</h1>
<form:form modelAttribute="product" action="${pageContext.request.contextPath}/product/edit/${product.id}" method="post">
    <table>
        <tr>
            <td><form:label path="name">Name:</form:label></td>
            <td><form:input path="name"/></td>
        </tr >
        <tr>
            <td><form:label path="price">Price:</form:label></td>
            <td><form:input path="price"/></td>
        </tr>
        <tr>
            <td><form:label path="discount">Discount:</form:label></td>
            <td><form:input path="discount"/></td>
        </tr>
        <tr>
            <td><form:label path="stock">Stock:</form:label></td>
            <td><form:input path="stock"/></td>
        </tr>
        <tr>
            <td><form:label path="description">Description:</form:label></td>
            <td><form:textarea path="description"/></td>
        </tr>
        <tr>
            <td><form:label path="imageUrl">Image URL:</form:label></td>
            <td><form:input path="imageUrl"/></td>
        </tr>
        <tr>
            <td><form:label path="category">Category:</form:label></td>
            <td>
                <form:select path="category">
                    <c:forEach items="${categories}" var="category">
                        <form:option value="${category.id}">${category.name}</form:option>
                    </c:forEach>
                </form:select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="Save Changes"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>