<%-- 
    Document   : homeshipper
    Created on : Jun 5, 2022, 1:19:08 PM
    Author     : vanhung38ht
--%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
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
                        <label class="btn btn-outline-dark"><a class="nav-link" href="Shipperacceptorder?accountid=${sessionScope.acc.id}">Order has been accepted</a></label>
                        <!--<label class="btn btn-outline-dark"><a class="nav-link" href="shipperdelivered.jsp">Delivered</a></label>-->
                    </div>                   

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
                            <th scope="col">Order Details</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <a hidden>
                        <input value="${sessionScope.acc.id}" name="idShipper">
                    </a>
                    <tbody>
                        <c:forEach items="${listorder}" var="l">
                            <tr>

                                <th scope="row">${l.orderid}</th>
                                <td>${l.name}</td>
                                <td>${l.address}</td>
                                <td>${l.phone}</td>
                                <td>$${l.totalprice}</td>
                                <td>
                                    <a class="btn btn-outline-dark" href="#vieworder">View</a>
                                    <!--<a href="#vieworder" class="btn btn-success " data-toggle="modal" ><i class="bi bi-plus-circle-fill"></i> View</a>-->
                                </td>
                                <td>
                                    <!--<input type="checkbox" class="btn-check"  >-->

                                    <a class="btn btn-outline-dark" href="AcceptOrderShipper?accountid=${sessionScope.acc.id}&orderid=${l.orderid}" >Accept</a>

                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </section>
    </body>
</html>