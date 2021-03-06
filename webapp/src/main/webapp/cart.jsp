<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<%--
  Created by IntelliJ IDEA.
  User: aslam
  Date: 4/29/21
  Time: 4:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My cart</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.6.0.js"></script>
    <script src="static/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function removeProduct(customerId, productId) {
            $.ajax({
                type: 'DELETE',
                data: {customerId: customerId, productId: productId},
                url: "cart",
                success: function () {
                    window.alert("removed");
                    window.location.href = "cart";
                }
            });
        }

        // let productCount;
        function countValueChanged(){
            console.log(document.getElementById("productCount").value);
        }

        function countUpdated(customerId, productId, productCount){
            console.log(productCount);
            $.ajax({
                type: 'PUT',
                data: {customerId: customerId, productId: productId, productCount: productCount},
                url: "cart",
                success: function () {
                    window.alert("updated");
                    window.location.href = "cart";
                }
            });
        };

        function purchased(total){
            window.alert("Thank you for shopping with us\n\n" +
                "-------------------------------\n" +
                "Total: $" + Math.round(total * 100) / 100 + "\n" +
                "-------------------------------"
            );
        }
    </script>
</head>
<body>

<jsp:include page="header.jsp" >
    <jsp:param name="customer" value="${customer}" />
    <jsp:param name="cart" value="${cart}" />
</jsp:include>

<div class="container">
    <div class="row d-flex justify-content-center m-auto pt-2">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th class="text-center">Price</th>
                    <th class="text-center">Total</th>
                    <th>??</th>
                </tr>
                </thead>

                <tbody>
                <c:set var="subTotal" value="${0}" />
                <c:forEach items="${productList}" var="product" varStatus="status">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                            <div class="media">
                                <a class="thumbnail pull-left" href="#"> <img class="media-object" src="${product.image}" style="width: 72px; height: 72px;"> </a>
                                <div class="media-body">
                                    <h4 class="media-heading"><a href="#">${product.name}</a></h4>
                                    <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                                </div>
                            </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                            <input type="number" class="form-control" id="productCount-${product.name}"
                                   value="${product.count}" oninput="countValueChanged()">
                            <button class="btn btn-sm btn-outline-dark"
                                    onclick="countUpdated(${customer.customer_id}, ${product.product_id},
                                            document.getElementById('productCount-${product.name}').value)">Update</button>
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>$${product.price}</strong></td>
                        <c:set var="total" value="${product.count * product.price}" />
<%--                        <c:set var="total">--%>
<%--                            <fmt:formatNumber type = "number" minFractionDigits="1" maxFractionDigits = "2" value = "9500" />--%>
<%--                        </c:set>--%>
                        <td class="col-sm-1 col-md-1 text-center"><strong>$${total}</strong></td>
                        <c:set var="subTotal" value="${subTotal + total}" />
                        <td class="col-sm-1 col-md-1">
                            <button type="button" class="btn btn-danger" onclick="removeProduct(${customer.customer_id}, ${product.product_id})">
                                <span class="glyphicon glyphicon-remove"></span> Remove
                            </button></td>
                    </tr>
                </c:forEach>

                <tr>
                    <td> ?? </td>
                    <td> ?? </td>
                    <td> ?? </td>
                    <td><h5>Subtotal</h5></td>
                    <td class="text-right"><h5><strong>$${subTotal}</strong></h5></td>
                </tr>

                <tr>
                    <td> ?? </td>
                    <td> ?? </td>
                    <td> ?? </td>
                    <td><h5>Estimated shipping</h5></td>
                    <c:set var="shippingCharge" value="${6.94}" />
                    <td class="text-right"><h5><strong>$${shippingCharge}</strong></h5></td>
                </tr>
                <tr>
                    <td> ?? </td>
                    <td> ?? </td>
                    <td> ?? </td>
                    <td><h3>Total</h3></td>
                    <c:set var="total" value="${subTotal + shippingCharge}" />
                    <td class="text-right"><h3><strong>$${total}</strong></h3></td>
                </tr>

                <tr>
                    <td> ?? </td>
                    <td> ?? </td>
                    <td> ?? </td>
                    <td>
                        <button type="button" class="btn btn-default" onclick="document.location.href='products'">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></td>
                    <td>
                        <button type="button" class="btn btn-success" onclick="purchased('${total}')">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
