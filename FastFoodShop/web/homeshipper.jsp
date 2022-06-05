<%-- 
    Document   : homeshipper
    Created on : Jun 5, 2022, 1:19:08 PM
    Author     : vanhung38ht
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Home Shipper</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
                <link href="css/styles.css" rel="stylesheet" />
        <link href="css/styles-1.css" rel="stylesheet" />
    </head>
    <body>  
        <section class="py-5">
            <div class="container" style="min-height: 1000px">
                <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
                    <div class="me-3">
                        <!--                        Search by ShipperID: <input type="select" class="btn-check"  > 
                                                <input type="submit" value="Find">-->
                        <label class="btn btn-outline-dark"><a class="nav-link" href="homeshipper.jsp">List Order</a></label>
                        <label class="btn btn-outline-dark"><a class="nav-link" href="shipperacceptorder.jsp">Order has been accepted</a></label>
                        <label class="btn btn-outline-dark"><a class="nav-link" href="shipperdelivered.jsp">Delivered</a></label>
                    </div>                   

                </div>
                <br>
                <br>
                <h1>List</h1>

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">OrderID</th>
                            <th scope="col">ProductName</th>
                            <th scope="col">ProductQuantity</th>
                            <th scope="col">Price</th>
                            <th scope="col">NameCustomer</th>
                            <th scope="col">Address</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Waiting For Confirmation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Bmy</td>
                            <td>3</td>
                            <td>12k</td>
                            <td>Hùng</td>
                            <td>HaNoi</td>
                            <td>123456</td>
                            <td>


                                <input type="checkbox" class="btn-check"  >
                                <label class="btn btn-outline-dark" >Accept</label>

                            <td>
                                <!-- <li class="nav-item"><a class="nav-link" href="View.jsp">View</a></li>-->
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Xôi</td>
                            <td>3</td>
                            <td>12k</td>
                            <td>Hùng</td>
                            <td>HaNoi</td>
                            <td>12345</td>
                            <td>
                                <input type="checkbox" class="btn-check"  >
                                <label class="btn btn-outline-dark" >Accept</label>
                                <!--                            <label class="btn btn-outline-dark" >Reject</label>-->
                            </td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
    </body>
</html>
