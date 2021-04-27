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
<div class="bg-dark" style="height: 120px;">
    <div class=container>
        <div class="row align-items-center">
            <div class="col-8">
<%--                <img class="h-75 w-auto mt-3 ml-4" src="img/logo.png">--%>
            </div>
            <div class="col-4">
                <div class="float-end mt-4 pt-3">
                    <div class="login-container">
                        <form action="#" action="/login" method="post" object="login">
                            <div class="row">
                                <input class="col-5" type="text" placeholder="Email" name="email">
                                <input class="col-4" type="text" placeholder="Password" name="password">
                                <button class="btn btn-outline-success col-3" type="submit">Login</button>
                            </div>
                        </form>
                    </div>
                    <div>dont have an account?</div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>


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

<footer class="footer bg-secondary pt-2">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-4 offset-1 col-sm-2 align-self-center">
                <h5>Contact us: </h5>
            </div>
            <div class="col-7 col-sm-5">
                <address>
                    121, Clear Water Bay Road<br>
                    Clear Water Bay, Kowloon<br>
                    HONG KONG<br>
                    Tel : +852 1234 5678<br>
                    Fax: +852 8765 4321<br>
                    mail:
                    <a href="mailto:hsm@store.net">hsm@store.net</a>
                </address>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-auto">
                <p>© Copyright 2021 hsm</p>
            </div>
        </div>
    </div>
</footer>
</body>
</html>