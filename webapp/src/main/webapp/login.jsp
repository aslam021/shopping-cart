<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: aslam
  Date: 4/28/21
  Time: 1:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
<%--    <link href="static/css/form.css" rel="stylesheet">--%>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<jsp:include page="header.jsp" />

<div  class="d-flex justify-content-center text-center w-25 m-auto pt-3">

    <form:form action="login" class="form-signin" id="loginForm" method="post" modelAttribute="loginModel">
        <img class="mb-4" src="img/user.jpeg" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>

        <label for="inputEmail" class="sr-only">Email address</label>
        <form:input id="inputEmail"  class="form-control" placeholder="Email" path="email" type="email"/>

        <label for="inputPassword" class="sr-only">Password</label>
        <form:input id="inputPassword" class="form-control" placeholder="Password" path="password" type="password"/>

        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>

        <form:button name="Login" class="btn btn-lg btn-primary btn-block" type="submit">Login</form:button>

        <p class="mt-5 mb-3 text-muted">&copy; 2021</p>
    </form:form>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
