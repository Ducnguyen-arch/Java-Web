<%@page import="dal.AccountDAO"%>


<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Books"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tìm Kiếm Sách</title>
        <link rel="icon" href="images/logo.png" type="image/icon type">

        <%
            String bookName = request.getParameter("bookName");
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            AccountDAO accountDAO = new AccountDAO();
            ArrayList<Books> list = accountDAO.getListSearchBooks(bookName);
        %>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <h2>Tìm Kiếm Sách</h2>
                <div class="row">
                <%if (list.size() == 0) {%>
                <br>
                <h5 style="margin-left: 500px;">Không có sách cần tìm</h5>
                <br><br>
                <%}%>  
                <%
                    for (Books books : list) {
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
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
