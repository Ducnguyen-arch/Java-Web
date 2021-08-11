<%@page import="dal.AccountDAO"%>


<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Books"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sách</title>
        <link rel="icon" href="../images/logo.ico" type="image/icon">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <!--<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">-->
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-grid.min.css">
        <%
            Object account = session.getAttribute("accountAdmin");
            if (account == null) {
                response.sendRedirect("login.jsp");
            }
            AccountDAO accountDAO = new AccountDAO();
            ArrayList<Books> list = accountDAO.getListAllBooks();
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h2>Quản lý sách</h2>
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-3">
                        <a href="addBook.jsp" class="btn btn-success btn-block">Thêm sách</a>
                    </div>
                </div>
                <br><br>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <table border="2">
                            <tr style="text-align: center">
                                <th style="width: 50px;">Mã Sách</th>
                                <th>Mã Loại</th>
                                <th>Tên sách</th>
                                <th>Ảnh</th>
                                <th>Giá</th>
                                <th style="width: 100px;">Mô tả</th>
                                <th style="width: 50px;"></th>
                                <th style="width: 50px;"></th>
                            </tr>
                        <%for (Books book : list) {%>
                        <tr style="text-align: center">
                            <td><%=book.getBookID()%></td>
                            <td><%=book.getCategoryID()%></td>
                            <td><%=book.getBookName()%></td>
                            <td><img src="../<%=book.getBookImage()%>" alt="" height="100"></td>
                            <td><%=formatter.format(book.getBookPrice())%> $</td>
                            <td><a href="bookDescription.jsp?id=<%=book.getBookID()%>" >Xem chi tiết</a></td>
                            <td><a href="editBook.jsp?id=<%=book.getBookID()%>">Edit</a></td>
                            <td><a href="/BookStore/AdminDeleteBook?id=<%=book.getBookID()%>">Delete</a></td>
                        </tr>
                        <%}%>
                    </table>
                    <br>
                </div>
            </div>
        </div>
    </body>
</html>
