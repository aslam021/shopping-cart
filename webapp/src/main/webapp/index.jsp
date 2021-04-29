<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello world from jsp</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ page isELIgnored="false" %>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/font-awesome.min.css" rel="stylesheet">
    <script src="static/js/jquery-3.6.0.js"></script>

    <script type="text/javascript">
        function myFunction(price) {
            window.alert("Thank you for shopping with us\n\n" +
                "-------------------------------\n" +
                "Total: " + price + "$\n" +
                "-------------------------------"
            );
        }

        function btnAddToCart(product_id, customer_id) {
            $.ajax({
                type: 'POST',
                data: {product_id: product_id, customer_id: customer_id},
                url: 'cart',
                success: function (result){
                    window.alert("Added to your cart");
                }
            })
        }
    </script>
</head>


<body>
<jsp:include page="header.jsp" >
    <jsp:param name="customer" value="${customer}" />
</jsp:include>
<div class="container" style="min-height:20em; padding: 1em;">
    <table class="table table-hover">
        <tbody>
        <c:forEach items="${productList}" var="product" varStatus="status">
            <tr>
                <td>
                    <div class="col-3">
                        <img class="" src="${product.image}">
                    </div>
                </td>
                <td>
                    <h>
                        <c:out value="${product.name}" />
                    </h>
                </td>
                <td>
                    <div class="row">
                        Price: $${product.price}
                    </div>
                    <div class="row pt-5 m-2">
                        <button type="button" class="btn btn-warning btn-sm w-50" onclick="btnAddToCart('${product.product_id}', '${customer.customer_id}')">Add to cart</button>
                        <button type="button" class="btn btn-success btn-sm w-50" onclick="myFunction('${product.price}')">Buy now</button>
                    </div>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>