<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<script src="../static/js/jquery-3.6.0.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        const notLoggedIn = document.getElementById("notLoggedIn");
        const loggedIn = document.getElementById("loggedIn");

        if ('${admin}' == "") {
            notLoggedIn.style.display = "block";
            loggedIn.style.display = "none";

        } else {
            notLoggedIn.style.display = "none";
            loggedIn.style.display = "block";

            if ('${page}' == "addProduct" || '${page}' == "updateProduct"){
                document.getElementById("addNew").style.display = "none";
                document.getElementById("viewProducts").style.display = "block";
            }
        }
    });

    function goBack(){
        if ('${page}' == "addProduct"){
            window.location.href = "/webapp_war/admin/products";
        } else {
            history.back();
        }
    }
</script>

<div class="bg-dark" style="height: 120px;">
    <div class=container>
        <div class="row align-items-center">
            <div class="col-6">
                <button name="addProducts" class="btn btn-success mt-5" id="viewProducts" style="display: none"
                        onclick="goBack()">View products</button>
                <%--                <img class="h-75 w-auto mt-3 ml-4" src="img/logo.png">--%>
            </div>
            <div class="col-6">
                <div class="float-end mt-4 pt-3">
                    <div class="login-container">

                        <div id="notLoggedIn">
                            <button name="Register" class="btn btn-success">Register</button>
                        </div>

                        <div id="loggedIn">
                            <button name="addProducts" class="btn btn-success" id="addNew"
                                    onclick="location.href ='products/addNew'">Add New Product</button>
                            <button name="logout" class="btn btn-outline-success">Logout</button>
                        </div>

                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>