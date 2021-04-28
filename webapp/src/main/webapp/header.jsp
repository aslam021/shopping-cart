<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div class="bg-dark" style="height: 120px;">
    <div class=container>
        <div class="row align-items-center">
            <div class="col-6">
                <%--                <img class="h-75 w-auto mt-3 ml-4" src="img/logo.png">--%>
            </div>
            <div class="col-6">
                <div class="float-end mt-4 pt-3">
                    <div class="login-container">

                        <button
                                name="Login"
                                class="btn btn-outline-success"
                                onclick="location.href ='login'"
                        >Login</button>

                        <button name="Register" class="btn btn-success">Register</button>

<%--                        <form action="#" action="/login" method="post" object="login">--%>
<%--                            <div class="row">--%>
<%--                                <input class="col-5" type="text" placeholder="Email" name="email">--%>
<%--                                <input class="col-4" type="text" placeholder="Password" name="password">--%>
<%--                                <button class="btn btn-outline-success col-3" type="submit">Login</button>--%>
<%--                            </div>--%>
<%--                        </form>--%>
                    </div>
                    <div>dont have an account?</div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>