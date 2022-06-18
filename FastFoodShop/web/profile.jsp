<%-- 
    Document   : profile
    Created on : Jun 5, 2022, 5:27:22 PM
    Author     : dmanh
--%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Profile</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    </head>
    <body>
        <section style="background-color: #eee;">
            <div class="container py-5">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">
                            <ol class="breadcrumb mb-0">
                                <li class="breadcrumb-item"><a href="home" style="text-decoration: none">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">User Profile</li>
                            </ol>
                        </nav>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="card mb-4">
                            <div class="card-body text-center">
                                <img src="https://1.bp.blogspot.com/-r8taaC_nv5U/XngOYFjbRVI/AAAAAAAAZnc/QjGkkHS78GMm6CocQ1OqrWGgQTkG1oQNACLcBGAsYHQ/s1600/Avatar-Facebook%2B%25281%2529.jpg" alt="avatar"
                                     class="rounded-circle img-fluid" style="width: 150px;">
                                <h5 class="my-3">${profile.displayName}</h5>
                                <div class="d-flex justify-content-center mb-2">
                                    <button type="button" class="btn btn-outline-primary ms-1">Edit Profile</button>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-8">
                        <div class="card mb-4">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Username</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${profile.username}</p>
                                    </div>
                                </div>

                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Password</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <script>
                                            function togglePassword() {
                                                var upass = document.getElementById('upass');
                                                var toggleBtn = document.getElementById('toggleBtn');
                                                if (upass.type == "password") {
                                                    upass.type = "text";
                                                    toggleBtn.value = "Hide";
                                                } else {
                                                    upass.type = "password";
                                                    toggleBtn.value = "Show";
                                                }
                                            }
                                        </script>
                                        <div class="container">
                                            <input style="" id="upass" type="password" name="userpass" value="${profile.password}" readonly>
  
                                            <input id="toggleBtn" type="button" onclick="togglePassword()" value="Show">
                                            
                                        </div>


                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Full Name</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${profile.displayName}</p>
                                    </div>
                                </div>

                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Phone</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${profile.phone}</p>
                                    </div>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Role</p>
                                    </div>
                                    <c:if test="${profile.isAdmin == 1}">
                                        <div class="col-sm-9">
                                            <p class="text-muted mb-0">Admin</p>
                                        </div>
                                    </c:if>
                                    <c:if test="${profile.isCustomer == 1}">
                                        <div class="col-sm-9">
                                            <p class="text-muted mb-0">Customer</p>
                                        </div>
                                    </c:if>
                                    <c:if test="${profile.isShipper == 1}">
                                        <div class="col-sm-9">
                                            <p class="text-muted mb-0">Shipper</p>
                                        </div>
                                    </c:if>
                                    <c:if test="${profile.isSeller == 1}">
                                        <div class="col-sm-9">
                                            <p class="text-muted mb-0">Seller</p>
                                        </div>
                                    </c:if>
                                </div>
                                <hr>
                                <div class="row">
                                    <div class="col-sm-3">
                                        <p class="mb-0">Address</p>
                                    </div>
                                    <div class="col-sm-9">
                                        <p class="text-muted mb-0">${profile.address}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>