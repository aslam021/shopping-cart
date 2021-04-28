<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Hello world from jsp</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
    <%@ page isELIgnored="false" %>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/font-awesome.min.css" rel="stylesheet">

    <script>
        function myFunction(price) {
            window.alert("Thank you for shopping with us\n\n" +
                "-------------------------------\n" +
                "Total: " + price + "$\n" +
                "-------------------------------"
            );
        }
    </script>

</head>
<body>

<jsp:include page="header.jsp" />


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
                        Price: ${product.price}$
                    </div>
                    <div class="row pt-5 m-2">
                        <button type="button" class="btn btn-warning btn-sm w-50">Add to cart</button>
                        <button type="button" class="btn btn-success btn-sm w-50" onclick="myFunction(${product.price})">Buy now</button>
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