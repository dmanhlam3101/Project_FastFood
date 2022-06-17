<%-- 
    Document   : shipperacceptorder
    Created on : Jun 5, 2022, 1:19:36 PM
    Author     : vanhung38ht
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Basic -->
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <!-- Site Metas -->
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="shortcut icon" href="images/favicon.png" type="">

        <title> HomeShipper </title>

        <!-- bootstrap core css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

        <!--owl slider stylesheet -->
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
        <!-- nice select  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha512-CruCP+TD3yXzlvvijET8wV5WxxEh5H8P4cmz0RFbKK6FlZ2sYl3AEsKlLPHbniXKSrDdFewhbmBK5skbdsASbQ==" crossorigin="anonymous" />
        <!-- font awesome style -->
        <link href="css/font-awesome.min.css" rel="stylesheet" />

        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet" />
        <link href="css/styles-1.css" rel="stylesheet" />
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
    </head>

    <body class="sub_page"> 
        <div class="hero_area ">
            <div class="bg-box">
                <img src="images/hero-bg.jpg" alt="">
            </div>
            <!-- header section strats -->
            <%@include file="component/header.jsp" %>
            <!-- end header section -->
        </div>
        <section class="py-5">
            <div class="container" style="min-height: 1000px">
                <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
                    <div class="me-3">
                        <!--                        Search by ShipperID: <input type="select" class="btn-check"  > 
                                                <input type="submit" value="Find">-->
                        <label class="btn btn-outline-dark"><a class="nav-link" href="homeshipper">List Order</a></label>
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
                            <td>Bún Đậu</td>
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
