<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="../header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Account</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1 class="text-center">Edit Account</h1>
    <form action="${pageContext.request.contextPath}/account/edit/${account.id}" method="post" class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2" for="username">Username:</label>
            <div class="col-sm-10">
                <input type="text" name="username" value="${account.username}" required class="form-control" id="username">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
                <input type="email" name="email" value="${account.email}" required class="form-control" id="email">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="password">Password:</label>
            <div class="col-sm-10">
                <div class="input-group">
                    <input type="password" name="password" value="${account.password}" required class="form-control" id="password">
                    <div class="input-group-append">
                        <button class="btn btn-outline-secondary" type="button" onclick="showPassword()">
                            <i class="fas fa-eye" id="eye"></i>
                        </button>
                    </div>
                </div>
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
                <input type="submit" value="Save Changes" class="btn btn-primary">
            </div>
        </div>
    </form>
    <script>
        function showPassword() {
            var x = document.getElementById("password");
            var eye = document.getElementById("eye");
            if (x.type === "password") {
                x.type = "text";
                eye.className = "fas fa-eye-slash";
            } else {
                x.type = "password";
                eye.className = "fas fa-eye";
            }
        }
    </script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</div>
</body>
</html>