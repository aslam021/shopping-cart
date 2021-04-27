<%--
  Created by IntelliJ IDEA.
  User: aslam
  Date: 4/27/21
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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


<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body p-0">
                    <div class="row p-5">
                        <div class="col-md-6">
                            <img src="http://via.placeholder.com/400x90?text=logo">
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-1">Invoice #550</p>
                            <p class="text-muted">Due to: 4 Dec, 2019</p>
                        </div>
                    </div>

                    <hr class="my-5">

                    <div class="row pb-5 p-5">
                        <div class="col-md-6">
                            <p class="font-weight-bold mb-4">Client Information</p>
                            <p class="mb-1">John Doe, Mrs Emma Downson</p>
                            <p>Acme Inc</p>
                            <p class="mb-1">Berlin, Germany</p>
                            <p class="mb-1">6781 45P</p>
                        </div>

                        <div class="col-md-6 text-right">
                            <p class="font-weight-bold mb-4">Payment Details</p>
                            <p class="mb-1"><span class="text-muted">VAT: </span> 1425782</p>
                            <p class="mb-1"><span class="text-muted">VAT ID: </span> 10253642</p>
                            <p class="mb-1"><span class="text-muted">Payment Type: </span> Root</p>
                            <p class="mb-1"><span class="text-muted">Name: </span> John Doe</p>
                        </div>
                    </div>

                    <div class="row p-5">
                        <div class="col-md-12">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="border-0 text-uppercase small font-weight-bold">ID</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Item</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Description</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Quantity</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Unit Cost</th>
                                    <th class="border-0 text-uppercase small font-weight-bold">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>Software</td>
                                    <td>LTS Versions</td>
                                    <td>21</td>
                                    <td>$321</td>
                                    <td>$3452</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Software</td>
                                    <td>Support</td>
                                    <td>234</td>
                                    <td>$6356</td>
                                    <td>$23423</td>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Software</td>
                                    <td>Sofware Collection</td>
                                    <td>4534</td>
                                    <td>$354</td>
                                    <td>$23434</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="d-flex flex-row-reverse bg-dark text-white p-4">
                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Grand Total</div>
                            <div class="h2 font-weight-light">$234,234</div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Discount</div>
                            <div class="h2 font-weight-light">10%</div>
                        </div>

                        <div class="py-3 px-5 text-right">
                            <div class="mb-2">Sub - Total amount</div>
                            <div class="h2 font-weight-light">$32,432</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="text-light mt-5 mb-5 text-center small">by : <a class="text-light" target="_blank" href="http://totoprayogo.com">totoprayogo.com</a></div>

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
