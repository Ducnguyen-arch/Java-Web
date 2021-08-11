<%@page import="dal.AccountDAO"%>


<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thể Loại</title>
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
            AccountDAO accountDAO = new AccountDAO();
            ArrayList<Category> list = accountDAO.getListCategory();
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h2>Quản lý thể loại sách</h2>
                <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <table border="2">
                            <tr style="text-align: center;">
                                <th>Mã</th>
                                <th>Tên Loại</th>
                                <th style="width: 30px;"></th>
                                <th style="width: 30px;"></th>
                            </tr>
                        <%for (Category category : list) {%>
                        <tr>
                            <td style="text-align: center;"><%=category.getCategoryID()%></td>
                            <td><%=category.getCategoryName()%></td>
                            <td style="text-align: center;"><a href="editCategory.jsp?id=<%=category.getCategoryID()%>">Edit</a></td>
                            <td style="text-align: center;"><a href="/BookStore/AdminDeleteCategory?id=<%=category.getCategoryID()%>">Delete</a></td>
                        </tr>
                        <%}%>
                    </table>
                    <br>
                    <div class="col-md-6">
                        <a href="addCategory.jsp" class="btn btn-success btn-block">Thêm thể loại</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
