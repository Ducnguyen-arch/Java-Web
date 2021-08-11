<%@page import="dal.AccountDAO"%>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tải Ảnh Lên</title>
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
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container">
            <h2>Tải Ảnh Lên</h2>
            <br><br>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <form method="POST" action="/BookStore/AdminUploadImageServlet" enctype="multipart/form-data">
                        Chọn file : 
                        <br>
                        <input type="file" name="file" size="60" /><br /><br /> 
                        <input style="margin-left: 100px; " class="btn btn-success" type="submit" value="Tải Lên" />
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
