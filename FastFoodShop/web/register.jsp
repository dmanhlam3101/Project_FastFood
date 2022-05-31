<%-- 
    Document   : login
    Created on : May 26, 2022, 10:06:19 PM
    Author     : dmanh
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
        <title>Register</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Section: Design Block -->
        <section class="text-center">
            <!-- Background image -->
            <div class="p-5 bg-image" style="
                 background-image: url('img/headerlogin.jpg');
                 height: 250px;
                 "></div>
            <!-- Background image -->

            <div class="card shadow-5-strong" style="
                 margin-top: -170px;
                 margin-left: 30%;
                 margin-bottom: 10px;
                 background: hsla(0, 0%, 100%, 0.8);
                 backdrop-filter: blur(30px);
                 width: 40%;
                 ">
                <div class="card-body py-5 px-md-5">

                    <div class="row d-flex justify-content-center">
                        <div class="col-lg-8">
                            <h2 class="fw-bold mb-5">Sign up now</h2>

                            <form action="register" method="post">
                                <!-- 2 column grid layout with text inputs for the first and last names -->
                                <div class="row">
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="firstname" class="form-control" placeholder="First name" />
                                        </div>
                                    </div>
                                    <div class="col-md-6 mb-4">
                                        <div class="form-outline">
                                            <input type="text" name="lastname" class="form-control" placeholder="Last name" />
                                        </div>
                                    </div>
                                </div>

                                <!-- Username input -->
                                <div class="form-outline mb-4">
                                    <input type="email" name="username" class="form-control" placeholder="User name" />
                                </div>

                                <!-- Phone input -->
                                <div class="form-outline mb-4">
                                    <input type="text" name="phone" class="form-control" placeholder="Phone number" />
                                </div>
                                <!-- Address input -->
                                <div class="form-outline mb-4">
                                    <input type="text" name="address" class="form-control" placeholder="Address" />
                                </div>
                                <!-- Password input -->
                                <div class="form-outline mb-4">
                                    <input type="text" name="password" class="form-control" placeholder="Password" />
                                </div>

                                <!--                                 Checkbox 
                                                                <div class="form-check d-flex justify-content-center mb-4">
                                                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example33" checked />
                                                                    <label class="form-check-label" for="form2Example33">
                                                                        Subscribe to our newsletter
                                                                    </label>
                                                                </div>-->

                                <!-- Submit button -->

                                <a type="submit" href="login.jsp" style="color: white" class="btn btn-primary btn-block mb-4">
                                    Sign up

                                </a>

                                <!--             Register buttons 
                                -->                                            <div class="text-center">
                                    <br>
                                    <button type="button" class="btn btn-link btn-floating mx-1">
                                        <i class="bi bi-facebook"></i>
                                    </button>

                                    <button type="button" class="btn btn-link btn-floating mx-1">
                                        <i class="bi bi-google"></i>
                                    </button>

                                    <button type="button" class="btn btn-link btn-floating mx-1">
                                        <i class="bi bi-twitter"></i>
                                    </button>

                                    <button type="button" class="btn btn-link btn-floating mx-1">
                                        <i class="bi bi-github"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Design Block -->
    </body>
</html>
