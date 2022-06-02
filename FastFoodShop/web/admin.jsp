<%-- 
    Document   : login
    Created on : May 26, 2022, 10:06:19 PM
    Author     : dmanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
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
        <link href="css/styles-1.css" rel="stylesheet" />
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
        <section class="py-5">
            <div class="container" style="min-height: 1000px">
                <div class="btn-group" role="group" aria-label="Basic checkbox toggle button group">
                    <div class="me-3">
                        <input type="checkbox" class="btn-check"  >
                        <label class="btn btn-outline-dark" >Customer List</label>
                    </div>
                    
                    <div class="me-3">
                        <input type="checkbox" class="btn-check"  >
                        <label class="btn btn-outline-dark" >Seller List</label>
                    </div>
                    
                    <div>
                        <input type="checkbox" class="btn-check"  >
                        <label class="btn btn-outline-dark" >Shipper List</label>
                    </div>

                </div>
                <br>
                 <br>
                <div>
                    <button class="btn btn-outline-dark "  ><i class="bi bi-plus-circle-fill"></i> Add</button>
                </div>
                <h1>List Customer</h1>
                
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Phone</th>
                            <th scope="col">Address</th>
                            <th scope="col">Status</th>
                             <th scope="col"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Markaaaaaaaaaaaaaaaaaaa</td>
                            <td>Ottoaaaaaaaaaaaaaa</td>
                            <td>@mdoaaaaaaaaaaaaaaaaaaaaaaaaaaa</td>
                            <td>
                                <select class="form-select">
                                    <option>Active</option>
                                    <option>Inactive</option>
                                </select>
                            </td>
                            <td>
                                 <a class="btn btn-outline-dark"><i class="bi bi-pencil"></i> Edit</a>
                                <a class="btn btn-outline-dark"><i class="bi bi-trash"></i></i> Delete</a>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Mark</td>
                            <td>Otta</td>
                            <td>@mdo</td>
                            <td>
                               <select class="form-select">
                                    <option>Active</option>
                                    <option>Inactive</option>
                                </select>
                            </td>
                            <td>
                                 <a class="btn btn-outline-dark"><i class="bi bi-pencil"></i> Edit</a>
                                <a class="btn btn-outline-dark"><i class="bi bi-trash"></i></i> Delete</a>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>
        
    </body>
</html>
