<%@page import="dal.AccountDAO"%>

<%@page import="model.AdminAccount"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            AdminAccount account = null;
            AccountDAO accountDAO = new AccountDAO();
            account = (AdminAccount) session.getAttribute("accountAdmin");
        %>
    </head>
    <body>
        <div class="container">
            <ul class="nav justify-content-end">
                <%if (account != null) {%>
                <li class="nav-item"><a href="#"> Xin chào <%=account.getName()%></a></li>
                <li style="margin-left: 20px;" class="nav-item"><a href="/BookStore/AdminLogout">Đăng Xuất</a></li>    
                    <%}%>
            </ul>

            <div class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="home.jsp">Trang chủ</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="type.jsp">Thể Loại</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="books.jsp">Sách</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="uploadImage.jsp">Tải Ảnh Lên</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="account.jsp">Người dùng</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="bill.jsp">Hóa Đơn</a>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="contact.jsp">Liên Hệ</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </body>
</html>
