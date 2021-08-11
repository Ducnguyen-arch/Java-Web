<%@page import="dal.AccountDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chỉnh Sửa Thể Loại</title>
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
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h2>Chỉnh sửa thể loại sách</h2>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <form action="/BookStore/AdminUpdateCategory" method="POST">
                            Mã: <input readonly="" type="text" name="id" value="<%=id%>">
                        <br>
                        Thể loại: <input type="text" name="category" value="">
                        <br><br>
                        <div class="col-md-3">
                        </div>
                        <div class="col-md-9">
                            <input type="submit" value="Xác nhận">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
