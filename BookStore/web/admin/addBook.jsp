<%@page import="dal.AccountDAO"%>

<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm Sách</title>
        <link rel="icon" href="../images/logo.ico" type="image/icon">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <!--<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.css">-->
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-grid.min.css">
        <%
            Object account = session.getAttribute("accountAdmin");
            if(account == null){
                response.sendRedirect("login.jsp");
            }
            String id = request.getParameter("id");
            AccountDAO accountDAO = new AccountDAO();
            ArrayList<Category> list = accountDAO.getListCategory();
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h2>Thêm Sách</h2>
                <br><br>
                <div class="row">
                    <div class="col-md-3">
                        <p>Mã Sách:</p>
                        <p>Loại Sách:</p>
                        <p>Tên Sách:</p>
                        <p>Ảnh:</p>
                        <p>Giá:</p>
                        <p>Mô Tả:</p>
                    </div>
                    <div class="col-md-9">
                        <form action="/BookStore/AdminAddBook" method="POST">
                            <p><input type="text" name="bookId" value=""></p>
                        <p>
                            <select name="categoryId">
                                <%for (Category category : list) {%>
                                <option value="<%=category.getCategoryID()%>"><%=category.getCategoryName()%></option>
                                <%}%>
                            </select>
                        </p>
                        <p><input type="text" name="bookName" value=""></p>
                        <p><input type="file" value="" class="sedang" name="bookImage"></p>
                        <p><input type="number" name="bookPrice" value=""> $</p> 
                        <p><textarea name="bookDescription" style="width: 300px; height: 100px;"></textarea></p>
                        <p><input type="submit" value="Xác nhận"></p>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
