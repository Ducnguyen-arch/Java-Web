<%@page import="dal.AccountDAO"%>

<%@page import="model.Category"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Account"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="icon" href="images/logo.ico" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-grid.min.css">
    </head>
    <body>
        <%
            Account account = null;
            AccountDAO accountDAO = new AccountDAO();
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            account = (Account) session.getAttribute("account");
        %>

        <div class="container">
            <ul class="nav justify-content-end">
                <%if (account != null) {%>
                <li class="nav-item"><a href="cart.jsp">Giỏ hàng</a></li>
                <li class="nav-item"><a href="accountInfo.jsp"> Xin chào <%=account.getAccountName()%></a></li>
                <li class="nav-item"><a href="logout">Đăng Xuất</a></li>    
                    <%}%>
                    <%if (account == null) {%>
                <li class="nav-item">
                    <form class="nav-link" action="login" method="GET">
                        <input class="btn btn-info" type="submit" value="Login">
                    </form>
                </li>
                <li class="nav-item">
                    <form class="nav-link" action="register" method="GET">
                        <input class="btn btn-info" type="submit" value="Register">
                    </form>
                </li>
                <%}%>
            </ul>

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="home.jsp">Trang chủ<span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item dropdown active">
                            <a class="nav-link dropdown-toggle active" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Thể Loại
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <%for (Category c : accountDAO.getListCategory()) {%>
                                <a class="nav-link active" href="books.jsp?id=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a>
                                <%}%>
                            </div>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="contact.jsp">Liên Hệ</a>
                        </li>
                    </ul>
                    <form action="search" method="GET" class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" name="bookName" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </div>
            </nav>
            <div class="row">
                <div class="col-md-12 banner">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="width: 100%;">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <a href="bookDetails.jsp?bookID=B26"><img class="d-block w-100" style="width: 100%" src="images/banner2.jpg" alt="First slide"></a>
                            </div>
                            <div class="carousel-item">
                                <a href="bookDetails.jsp?bookID=B01"><img class="d-block w-100" style="width: 100%" src="images/banner1.jpg" alt="Second slide"></a>
                            </div>
                            <div class="carousel-item">
                                <a href="bookDetails.jsp?bookID=B21"><img class="d-block w-100" style="width: 100%" src="images/banner3.jpg" alt="Third slide"></a>
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
