<%@ page language="java" contentType=" text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Order Detail</title>
    </head>
    <body>
        <h1>Order Detail</h1>
        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Price</th>
            </tr>
            <c:forEach items="${order.orderDetails}" var="orderDetail">
                <tr>
                    <td>${orderDetail.product.name}</td>
                    <td>${orderDetail.quantity}</td>
                    <td>${orderDetail.price}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>