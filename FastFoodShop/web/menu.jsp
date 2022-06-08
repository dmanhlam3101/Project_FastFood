<%-- 
    Document   : menu
    Created on : Jun 2, 2022, 1:37:22 AM
    Author     : dmanh
--%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

        <title> FastFood </title>

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

        <!-- food section -->

        <section class="food_section layout_padding">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Our Menu
                    </h2>
                </div>

                <ul class="filters_menu">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter="*"><a href="CateContro?brand=1">Pizza</a></li>
                    <li data-filter="*"><a href="CateContro?brand=2">Chicken</a></li>
                    <li data-filter="*"><a href="CateContro?brand=3">Drink</a></li>
                    <li data-filter="*"><a href="CateContro?brand=4">Pasta</a></li>
                    <li data-filter="*"><a href="CateContro?brand=5">Snacks</a></li>
                    <li data-filter="*"><a href="CateContro?brand=6">Ice Cream</a></li>
                    <li data-filter="*"><a href="CateContro?brand=7">Hamburger</a></li>
                </ul>

                <div class="filters-content">
                    <div class="row grid">
                        <c:forEach items="${listfood}" var="f">
                            <div class="col-sm-6 col-lg-4 all pizza">
                                <div class="box">

                                    <div>
                                        <div class="img-box">
                                            <img style="background: #f1f2f3" src="${f.image}" alt="">
                                        </div >
                                        <div class="detail-box">
                                            <h5 style="color: white">
                                                ${f.foodname}
                                            </h5>
                                            <p style="min-height: 80px">
                                                ${f.description}
                                            </p>
                                            <div class="options">
                                                <h6 style="font-size: 20px">
                                                    $${f.unitprice}
                                                </h6>
                                                <!-- add to cart o day -->
                                                <a href="" style="background-color: #ffdf9a">
                                                    <i style="color: black " class="bi bi-cart2" ></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
<!--            <div class="btn-box">
                <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                    <c:forEach begin="1" end="${endP}" var="b">
                    <li class="page-item"><a class="page-link" href="menu?index=${b}">${b}</a></li>
                    </c:forEach>
                <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </div>-->
        </div>
    </section>

    <!-- end food section -->

    <!-- footer section -->
    <%@include file="component/footer.jsp" %>
    <!-- footer section -->

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
