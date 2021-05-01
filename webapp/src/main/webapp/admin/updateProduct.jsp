<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: aslam
  Date: 4/30/21
  Time: 3:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Add New Product</title>
    <link href="../../../static/css/bootstrap.min.css" rel="stylesheet">
    <script src="../../../static/js/jquery-3.6.0.js"></script>
    <script src="../../../static/js/bootstrap.min.js"></script>
</head>


<body>

<jsp:include page="header.jsp" >
    <jsp:param name="admin" value="${admin}" />
    <jsp:param name="page" value="updateProduct"/>
</jsp:include>

<div class="container w-50 align-middle align-items-center" style="min-height:20em; padding: 1em;">

    <div class="m-1 text-center text-decoration-underline mb-4">
        <h4><strong>Update ${productData.name}</strong></h4>
    </div>

    <form:form action="" class="form-signin" id="addNewForm" method="post"
               modelAttribute="productData">
        <div class="form-group row m-1">
            <label for="productName" class="col-sm-3 col-form-label">Product Name</label>
            <div class="col-sm-8">
                <form:input type="text" class="form-control" id="productName"
                            placeholder="Product Name" path="name" required="required"/>
            </div>
        </div>
        <div class="form-group row m-1">
            <label for="image" class="col-sm-3 col-form-label">Image</label>
            <div class="col-sm-9">
                <a class="thumbnail pull-left" href="#"> <img class="media-object" src="../../../${productData.image}" style="width: 72px; height: 72px;"> </a>
                <form:input type="file" class="form-control-file" id="image" path="image"/>
            </div>
        </div>
        <div class="form-group row m-1">
            <label for="price" class="col-sm-3 col-form-label">Price (USD)</label>
            <div class="col-sm-8">
                <form:input type="number" step="0.01" class="form-control" id="price"
                            placeholder="Price (USD)"  path="price" required="required"/>
            </div>
        </div>
        <div class="form-group row m-1">
            <label for="count" class="col-sm-3 col-form-label">Quantity</label>
            <div class="col-sm-8">
                <form:input type="number" class="form-control" id="count"
                            placeholder="Quantity" path="count" required="required"/>
            </div>
        </div>
        <div class="form-group row m-1">
            <label for="discount" class="col-sm-3 col-form-label">Discount (%)</label>
            <div class="col-sm-8">
                <form:input type="number" step="0.01" class="form-control" id="discount"
                            placeholder="Percentage" value="0" path="discount"/>
            </div>
        </div>

        <button type="submit" class="btn btn-primary mx-auto d-block m-2">UPDATE</button>

    </form:form>

</div>

<jsp:include page="footer.jsp" />

</body>
</html>
