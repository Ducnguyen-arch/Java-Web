<%@page import="dal.AccountDAO"%>

<%@page import="model.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Account</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-grid.min.css">
        <%
            Account account = null;
            AccountDAO accountDAO = new AccountDAO();
            account = (Account) session.getAttribute("account");
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h2>Chỉnh Sửa Tài Khoản</h2>
                <div class="row" style="padding-top: 100px;">
                    <div class="col-md-4">
                        <p>Tên Tài Khoản</p>
                        <p>Email</p>
                        <p>Mật Khẩu</p>
                        <p>Số Điện Thoại</p>
                    </div>
                    <div class="col-md-8">
                        <form action="EditAccount" method="POST">
                            <p><input type="text" name="name" value="<%=account.getAccountName()%>" /></p>
                        <p><input type="text" name="email" value="<%=account.getAccountEmail()%>" /></p>
                        <p><input type="text" name="password" value="<%=account.getAccountPass()%>" /></p>
                        <p><input type="text" name="phone" value="<%=account.getAccountPhone()%>" /> </p>
                        <input type="submit" class="btn btn-success" value="Lưu" />
                    </form>
                </div>
            </div>
            <br><br>
        </div>
        <div class="map">
            <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8856.471859046651!2d106.09084442573108!3d21.04517759707094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a0e8d668eb19%3A0x762903004d018f78!2zMjHCsDAyJzQxLjciTiAxMDbCsDA1JzM0LjciRQ!5e0!3m2!1svi!2s!4v1605448342131!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>-->
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
