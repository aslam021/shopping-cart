<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Products</title>
    <link href="../static/css/bootstrap.min.css" rel="stylesheet">
    <script src="../static/js/jquery-3.6.0.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function deleteProduct(productId){
            $.ajax({
                type: 'DELETE',
                data: {productId: productId},
                url: 'products',
                success: function (result){
                    window.alert("deleted");
                    window.location.href = "products";
                }});
        }
    </script>
</head>
<body>

<jsp:include page="header.jsp" >
    <jsp:param name="admin" value="${admin}" />
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
                    <th class="text-center">Discount</th>
                    <th> </th>
                </tr>
                </thead>

                <tbody>
                <c:forEach items="${productsList}" var="product" varStatus="status">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                            <div class="media">
                                <a class="thumbnail pull-left" href="#"> <img class="media-object" src="../${product.image}" style="width: 72px; height: 72px;"> </a>
                                <div class="media-body">
                                    <h4 class="media-heading"><a href="#">${product.name}</a></h4>
                                    <span>Status: </span><span class="text-success"><strong>In Stock</strong></span>
                                </div>
                            </div></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${product.count}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>$${product.price}</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${product.discount}%</strong></td>
                        <td class="col-sm-1 col-md-1 align-items-center align-middle">
                            <button type="button" class="btn btn-outline-danger m-2"
                                    onclick="location.href ='products/update/${product.product_id}'">
                                <span class="glyphicon glyphicon-remove"></span> Update
                            </button>
                            <button type="button" class="btn btn-danger m-2 mt-0"
                                    onclick="deleteProduct(${product.product_id})">
                                <span class="glyphicon glyphicon-remove"></span> Delete
                            </button>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
