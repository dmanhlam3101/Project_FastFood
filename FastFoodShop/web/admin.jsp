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
