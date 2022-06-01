<%-- 
    Document   : home
    Created on : Jun 1, 2022, 10:23:44 PM
    Author     : dmanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <!-- Basic -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <!-- responsive style -->
        <link href="css/responsive.css" rel="stylesheet" />
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

    </head>

    <body class="sub_page">

        <div class="hero_area">
            <div class="bg-box">
                <img src="images/hero-bg.jpg" alt="">
            </div>
            <!-- header section strats -->
            <%@include file="component/header.jsp" %>
            <!-- end header section -->

        </div>
        <!-- slider section -->
      
        <!-- end slider section -->
        <!-- offer section -->

        <section class="offer_section layout_padding-bottom">
            <div class="offer_container">
                <div class="container ">
                    <div class="row">
                        <div class="col-md-6  ">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/o1.jpg" alt="">
                                </div>
                                <div class="detail-box">
                                    <h5>
                                        Tasty Thursdays
                                    </h5>
                                    <h6>
                                        <span>20%</span> Off
                                    </h6>
                                    <a href="">
                                        Order Now 
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6  ">
                            <div class="box ">
                                <div class="img-box">
                                    <img src="images/o2.jpg" alt="">
                                </div>
                                <div class="detail-box">
                                    <h5>
                                        Pizza Days
                                    </h5>
                                    <h6>
                                        <span>15%</span> Off
                                    </h6>
                                    <a href="">
                                        Order Now
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- end offer section -->

        <!-- food section -->

        <section class="food_section layout_padding-bottom">
            <div class="container">
                <div class="heading_container heading_center">
                    <h2>
                        Our Menu
                    </h2>
                </div>

                <ul class="filters_menu">
                    <li class="active" data-filter="*">All</li>
                    <li data-filter=".burger">Burger</li>
                    <li data-filter=".pizza">Pizza</li>
                    <li data-filter=".pasta">Pasta</li>
                    <li data-filter=".fries">Fries</li>
                </ul>

                <div class="filters-content">
                    <div class="row grid">
                        <div class="col-sm-6 col-lg-4 all pizza">
                            <div class="box">
                                <div>
                                    <div class="img-box">
                                        <img src="images/f1.png" alt="">
                                    </div >
                                    <div class="detail-box">
                                        <h5>
                                            Delicious Pizza
                                        </h5>
                                        <p>
                                            Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                        </p>
                                        <div class="options">
                                            <h6>
                                                $20
                                            </h6>
                                            <!-- add to cart o day -->
                                            <a href="">
                                                <i style="color: black" class="bi bi-cart2" ></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 all burger">
                            <div class="box">
                                <div>
                                    <div class="img-box">
                                        <img src="images/f2.png" alt="">
                                    </div>
                                    <div class="detail-box">
                                        <h5>
                                            Delicious Burger
                                        </h5>
                                        <p>
                                            Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                        </p>
                                        <div class="options">
                                            <h6>
                                                $15
                                            </h6>

                                            <a href="">
                                                <i style="color: black" class="bi bi-cart2" ></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-4 all pizza">
                            <div class="box">
                                <div>
                                    <div class="img-box">
                                        <img src="images/f3.png" alt="">
                                    </div>
                                    <div class="detail-box">
                                        <h5>
                                            Delicious Pizza
                                        </h5>
                                        <p>
                                            Veniam debitis quaerat officiis quasi cupiditate quo, quisquam velit, magnam voluptatem repellendus sed eaque
                                        </p>
                                        <div class="options">
                                            <h6>
                                                $17
                                            </h6>
                                            <!-- add to cart o day -->
                                            <a href="">
                                                <i style="color: black" class="bi bi-cart2" ></i>
                                            </a>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="btn-box">
                            <a href="">
                                View More
                            </a>
                        </div>
                    </div>
                    </section>

                    <!-- end food section -->




                    <section class="client_section layout_padding-bottom">
                        <div class="container">
                            <div class="heading_container heading_center psudo_white_primary mb_45">
                                <h2>
                                    What Says Our Customers
                                </h2>
                            </div>
                            <div class="carousel-wrap row ">
                                <div class="owl-carousel client_owl-carousel">
                                    <div class="item">
                                        <div class="box">
                                            <div class="detail-box">
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam
                                                </p>
                                                <h6>
                                                    Moana Michell
                                                </h6>
                                                <p>
                                                    magna aliqua
                                                </p>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="item">
                                        <div class="box">
                                            <div class="detail-box">
                                                <p>
                                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam
                                                </p>
                                                <h6>
                                                    Mike Hamell
                                                </h6>
                                                <p>
                                                    magna aliqua
                                                </p>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- end client section -->             

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
                    <!-- Google Map -->
                    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCh39n5U-4IoWpsVGUHWdqB6puEkhRLdmI&callback=myMap">
                    </script>
                    <!-- End Google Map -->

                    </body>

                    </html>
