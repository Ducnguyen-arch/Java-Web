<%@page import="model.BillDetail"%>
<%@page import="dal.AccountDAO"%>


<%@page import="java.util.ArrayList"%>
<%@page import="model.Bill"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Hóa Đơn</title>
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
            ArrayList<Bill> list = accountDAO.getListBill();
//            ArrayList<BillDetail> listBd = accountDAO.getListBillDetail(Integer.parseInt("accountId"));
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h2>Quản lý hóa đơn</h2>
                <div class="row">
                    <div class="col-md-2"></div>
                    <div class="col-md-10">
                        <table border="2">
                            <tr style="text-align: center;">
                                <th>Mã Đơn Hàng</th>
                                <th>Mã Tài Khoản</th>
                                <th>Tổng Tiền</th>
                                <th>Hình Thức Thanh Toán</th>
                                <th>Địa Chỉ</th>
                                <th>Ngày</th>
                                <th>Tên Khách Hàng</th>
                                <th>Số Điện Thoại</th>
                                <th></th>
                            </tr>
                        <%for (Bill bill : list) {%>
                        <tr>
                            <td style="text-align: center;"><%=bill.getBillID()%></td>
                            <td style="text-align: center;"><%=bill.getAccountID()%></td>
                            <td><%=bill.getTotal() %>$</td>                         
                            <td><%=bill.getPayment()%></td>
                            <td><%=bill.getAddress()%></td>
                            <td style="text-align: center; width: 100px;"><%=bill.getDate()%></td>
                            <td style="width: 100px;"><%=bill.getName()%></td>
                            <td><%=bill.getPhone()%></td>
                            <td><a href="/BookStore/AdminDeleteBill?id=<%=bill.getBillID()%>">Delete</a></td>
                        </tr>
                        <%}%>
                    </table>
                    <br><br>
                </div>
            </div>
        </div>
    </body>
</html>
