
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dal.AccountDAO"%>
<%@page import="model.Books"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome to Duc Nguyen Bookstore</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="images/logo.png" type="image/icon type">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-grid.css">
        <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap-grid.min.css">
        <%
            String id = request.getParameter("id");
            ArrayList<Books> listNewBook = new AccountDAO().getTop6ListNewBook();
            ArrayList<Books> listLocalBook = new AccountDAO().getTop6ListBook(1);
            ArrayList<Books> listForeignBook = new AccountDAO().getTop6ListBook(2);
            DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container" style="padding-top: 100px;">
                <h2>Sách mới</h2>
                <div class="row">
                <%
                    for (Books books : listNewBook) {
                %>
                <div class="col-md-3">		
                    <a href="bookDetails.jsp?bookID=<%=books.getBookID()%>">
                        <div>
                            <img src="<%=books.getBookImage()%>"  alt="" height="400">
                        </div>			
                    </a>			
                    <div class="women">
                        <h6><a href="bookDetails.jsp?bookID=<%=books.getBookID()%>"><%=books.getBookName()%></a></h6>
                        <p><em class="item_price"><%=formatter.format(books.getBookPrice())%> $</em>
                            <br>
                            <a href="cart?bookID=<%=books.getBookID()%>" data-text="Thêm vào giỏ">Thêm vào giỏ hàng</a>
                        </p>
                    </div>
                </div>
                <%}%>
            </div>
            <br><br><br>
            <h2>Sách Trong Nước</h2>
            <div class="row">
                <%
                    for (Books books : listLocalBook) {
                %>
                <div class="col-md-3">		
                    <a href="bookDetails.jsp?bookID=<%=books.getBookID()%>">
                        <div>
                            <img src="<%=books.getBookImage()%>"  alt="" height="400">
                        </div>			
                    </a>			
                    <div class="women">
                        <h6><a href="bookDetails.jsp?bookID=<%=books.getBookID()%>"><%=books.getBookName()%></a></h6>
                        <p><em class="item_price"><%=formatter.format(books.getBookPrice())%> $</em>
                            <br>
                            <a href="cart?bookID=<%=books.getBookID()%>" data-text="Thêm vào giỏ">Thêm vào giỏ</a>
                        </p>
                    </div>
                </div>
                <%}%>
            </div>
            <br><br><br>
            <h2>Sách Nước Ngoài</h2>
            <div class="row">
                <%
                    for (Books books : listForeignBook) {
                %>
                <div class="col-md-3">		
                    <a href="bookDetails.jsp?bookID=<%=books.getBookID()%>">
                        <div>
                            <img src="<%=books.getBookImage()%>"  alt="" height="400">
                        </div>			
                    </a>			
                    <div class="women">
                        <h6><a href="bookDetails.jsp?bookID=<%=books.getBookID()%>"><%=books.getBookName()%></a></h6>
                        <p><em class="item_price"><%=formatter.format(books.getBookPrice())%> $</em>
                            <br>
                            <a href="cart?bookID=<%=books.getBookID()%>" data-text="Thêm vào giỏ">Thêm vào giỏ</a>
                        </p>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    <script src="bootstrap/js/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
