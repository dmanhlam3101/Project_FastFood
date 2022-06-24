<%-- 
    Document   : shipperacceptorder
    Created on : Jun 5, 2022, 1:19:36 PM
    Author     : vanhung38ht
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                    <div style="margin-right: 30rem">
                        <!--                        Search by ShipperID: <input type="select" class="btn-check"  > 
                                                <input type="submit" value="Find">-->
                        <label class="btn btn-outline-dark"><a class="nav-link" href="homeshipper">List Order</a></label>
                        <label class="btn btn-outline-dark"><a class="nav-link" href="shipperacceptorder?accountid=${sessionScope.acc.id}">Order has been accepted</a></label>

                    </div>     
                    <c:forEach items="${list1}" var="c">
                        <div style="font-size: 30px;font-weight: 700" class="d-flex justify-content-end">Delivery Money: $${c.deliverymoney}</div>
                    </c:forEach>

                </div>
                <br>
                <br>
                <h1>List</h1>

                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Order ID</th>
                            <th scope="col">Name Customer</th>
                            <th scope="col">Address</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Total Price</th>
                            <th scope="col">Status</th>
                            <!--                            <th scope="col">ShipperID</th>-->
                            <!--                            <th scope="col">Money</th>-->
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="l">
                            <tr>
                                <th scope="row">${l.orderid}</th>
                                <td>${l.name}</td>
                                <td>${l.address}</td>
                                <td>${l.phone}</td>
                                <td>$${l.totalprice}</td>                             
                                <td>
                                    <a style="color: white" class="btn btn-success" href="deliveryMoney?totalprice=${l.totalprice}&accountid=${sessionScope.acc.id}&orderid=${l.orderid}">Done</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>


        <!-- jQery -->
        <script src="js/jquery-3.4.1.min.js"></script>
        <!-- popper js -->
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
        </script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.js"></script>
        <!-- owl slider -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
        </script>
        <!-- isotope js -->
        <script src="https://unpkg.com/isotope-layout@3.0.4/dist/isotope.pkgd.min.js"></script>
        <!-- nice select -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <!-- custom js -->
        <script src="js/custom.js"></script>

        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts-1.js"></script>
    </body>
</html>
