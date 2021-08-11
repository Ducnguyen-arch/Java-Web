<%@page import="dal.AccountDAO"%>


<%@page import="model.Contact"%>
<%@page import="java.util.ArrayList"%>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên Hệ</title>
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
            ArrayList<Contact> list = accountDAO.getListContacts();
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h2>Quản lý liên hệ</h2>
                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-10">
                        <table border="2">
                            <tr style="text-align: center">
                                <th>Mã</th>
                                <th>Tên người liên hệ</th>
                                <th>Email</th>
                                <th>Tiêu đề</th>
                                <th>Lời nhắn</th>
                                <th>Ngày liên hệ</th>
                                <th></th>
                            </tr>
                        <%for (Contact contact : list) {%>
                        <tr>
                            <td><%=contact.getContactID()%></td>
                            <td><%=contact.getContactName()%></td>
                            <td><%=contact.getContactEmail()%></td>
                            <td><%=contact.getContactTitle()%></td>
                            <td><%=contact.getContactMessage()%></td>
                            <td><%=contact.getContactDate()%></td>
                            <td><a href="/BookStore/AdminDeleteContact?id=<%=contact.getContactID()%>">Delete</a></td>
                        </tr>
                        <%}%>
                    </table>
                    <br>
                    <br><br>
                </div>
            </div>
        </div>
    </body>
</html>
