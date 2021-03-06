<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<script src="static/js/jquery-3.6.0.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        const notLoggedIn = document.getElementById("notLoggedIn");
        const loggedIn = document.getElementById("loggedIn");
        const loginButton = document.getElementById("loginButton");
        const cartButton = document.getElementById("cartButton");

        if ('${page}' == "login"){
            loginButton.style.display = "none";
        } else if ('${page}' == "cart") {
            cartButton.style.display = "none";
        }

        if ('${customer}' == "") {
            notLoggedIn.style.display = "block";
            loggedIn.style.display = "none";
        } else {
            notLoggedIn.style.display = "none";
            loggedIn.style.display = "block";
        }
    });
</script>

<div class="bg-dark" style="height: 120px;">
    <div class=container>
        <div class="row align-items-center">
            <div class="col-5">
                <%--                <img class="h-75 w-auto mt-3 ml-4" src="img/logo.png">--%>
            </div>
            <div class="col-7">
                <div class="float-end mt-4 pt-3">
                    <div class="login-container">

                        <div id="notLoggedIn">
                            <button name="Login" class="btn btn-outline-success"
                                    onclick="location.href ='login'" id="loginButton">Login</button>
                            <button name="Register" class="btn btn-success">Register</button>
                        </div>

                        <div id="loggedIn">
                            <button name="cart" class="btn btn-success"
                                    onclick="location.href ='cart'" id="cartButton">Cart</button>
                            <button name="logout" class="btn btn-outline-success">Logout</button>
                        </div>

                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>