<%@page import="dal.AccountDAO"%>

<%@page import="model.Account"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trang Chủ</title>
        <link rel="icon" href="../images/logo.png" type="image/icon">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
        <%
            Object account = session.getAttribute("accountAdmin");
            if (account == null) {
                response.sendRedirect("login.jsp");
            }
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <a href="home.jsp"><img alt="" src="../images/home.png">
                        <p style="text-align: center; font-size: 20px;">Trang Chủ</p></a>
                </div>
                <div class="col-md-2">
                    <a href="type.jsp"><img alt="" src="../images/categorys.png">
                        <p style="text-align: center; font-size: 20px;">Thể Loại</p></a>
                </div>
                <div class="col-md-2">
                    <a href="books.jsp"><img alt="" src="../images/book.png">
                        <p style="text-align: center; font-size: 20px;">Sách</p></a>
                </div>
                <div class="col-md-2">
                    <a href="uploadImage.jsp"><img alt="" src="../images/picture.png">
                        <p style="text-align: center; font-size: 20px;">Tải Ảnh Lên</p></a>
                </div>
                <div class="col-md-2"></div>
                <div class="col-md-2"></div>
                <div class="col-md-2">
                    <a href="account.jsp"><img alt="" src="../images/users.png">
                        <p style="text-align: center; font-size: 20px;">Người Dùng</p></a>
                </div>
                <div class="col-md-2">
                    <a href="bill.jsp"><img alt="" src="../images/bill.png">
                        <p style="text-align: center; font-size: 20px;">Hóa Đơn</p></a>
                </div>
                <div class="col-md-2">
                    <a href="contact.jsp"><img alt="" src="../images/contact.png">
                        <p style="text-align: center; font-size: 20px;">Liên Hệ</p></a>
                </div>
                <div class="col-md-2">
                    <a href="/BookStore/AdminLogout"><img alt="" src="../images/logout.png">
                        <p style="text-align: center; font-size: 20px;">Đăng Xuất</p></a>
                </div>
            </div>
        </div>
    </body>
</html>
