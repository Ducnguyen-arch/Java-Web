<%@page import="dal.AccountDAO"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" href="image/bookicon.ico" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-grid.min.css">
    </head>
    <body>
        <!-- Footer -->
        <footer class="page-footer font-small unique-color-dark">

            <div style="background-color: #6351ce;">
                <div class="container">
                    <div class="row py-4 d-flex align-items-center">
                        <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                            Get connected with us on social networks!
                        </div> 
                        <div class="col-md-4">
                            <a href="https://www.facebook.com/DucNguyenF.u" class="btn btn-success">Facebook</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Footer Links -->
            <div class="container text-center text-md-left mt-5">

                <!-- Grid row -->
                <div class="row mt-3">

                    <!-- Grid column -->
                    <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">

                        <!-- Content -->
                        <h6 class="text-uppercase font-weight-bold">Duc Nguyen Bookstore</h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            Số 5, đường Hạnh Đàn, Tân Lập, Đan Phượng, Hà Nội
                            <br>
                            Công Ty Cổ Phần Phát Hành Sách
                            Duc Nguyen Bookstore nhận đặt hàng trực tuyến và giao hàng tận nơi. 
                        </p>

                    </div>
                    <!-- Grid column -->

                    <!-- Grid column -->
                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">

                        <!-- Links -->
                        <h6 class="text-uppercase font-weight-bold">Products</h6>
                        <hr class="deep-purple accent-2 mb-4 mt-0 d-inline-block mx-auto" style="width: 60px;">
                        <p>
                            <a href="books.jsp?id=1">Sách trong nước</a>
                        </p>
                        <p>
                            <a href="books.jsp?id=2">Sách nước ngoài</a>
                        </p>
                    </div>
                    <div class="col-md-4">

                        <!-- Links -->
                        <h6 class="text-uppercase font-weight-bold">Contact</h6>

                        <p>
                            Đan Phượng, Hà Nội, Việt Nam</p>
                        <p>
                            nnduc1520@gmail.com</p>
                        <p>
                            + 84 666 8886</p>
                        <p>
                            + 84 990 2399</p>

                    </div>
                    <!-- Grid column -->

                </div>
                <!-- Grid row -->

            </div>
            <!-- Footer Links -->

            <!-- Copyright -->
            <div class="footer-copyright text-center py-3">© 2020 Copyright:
                <a href="home.jsp"> DucNguyenBookStore.com</a>
            </div>
            <!-- Copyright -->

        </footer>
        <!-- Footer -->
    </body>
</html>
