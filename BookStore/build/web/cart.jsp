
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Account"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dal.AccountDAO"%>
<%@page import="model.BillDetail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ Hàng</title>
               <link rel="icon" href="images/logo.png" type="image/icon type">

        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <%
            Account account = new Account();
            account = (Account) session.getAttribute("account");
            if (account == null) {
                account = new Account(0);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            AccountDAO accountDAO = new AccountDAO();
            ArrayList<BillDetail> list = accountDAO.getListBillDetail(account.getAccountID());
        %>
    </head>
    <body>
        
        
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container"> 
            <table id="cart" class="table table-hover table-condensed"> 
                <thead> 
                    <tr> 
                        <th style="width:50%">Tên sản phẩm</th> 
                        <th style="width:10%">Giá</th> 
                        <th style="width:8%">Số lượng</th> 
                        <th style="width:22%" class="text-center">Thành tiền</th> 
                        <th style="width:10%"> </th> 
                    </tr> 
                </thead> 
                <tbody>

                    <%for (int i = 0; i < list.size(); i++) {%>
                    <tr> 
                        <td data-th="Product"> 
                            <div class="row"> 
                                <div class="col-sm-2 hidden-xs"><img src="<%=list.get(i).getBookImage()%>" alt="" class="img-responsive" width="100">
                                </div> 
                                <div class="col-sm-10"> 
                                    <h4 class="nomargin"><%=list.get(i).getBookName()%></h4>  
                                </div> 
                            </div> 
                        </td> 
                        <td data-th="Price"><%=formatter.format(list.get(i).getPrice())%> $</td> 
                        
                        <!--list up down-->
                        <td data-th="Quantity" class="align-middle">
                            <a href="subQuantity?id=<%=list.get(i).getBillDetailID()%>"><button class="btnSub">-</button></a> <strong><%=list.get(i).getQuantity()%></strong>
                            <a href="addQuantity?id=<%=list.get(i).getBillDetailID()%>"><button class="btnAdd">+</button></a>
                        </td>     
                        
                        <!--Tong tien phai tra-->
                        <td data-th="Subtotal" class="text-center"><%=formatter.format(list.get(i).getPrice() * list.get(i).getQuantity())%> $</td> 
                        <td class="actions" data-th="">
                            <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"><a href="delete?id=<%=list.get(i).getBillDetailID()%>">Xóa</a></i>
                            </button>
                        </td>
                    </tr> 
                    <%}%>
                </tbody>
                <tfoot> 

                    <tr> 
                        <td><a href="home.jsp" class="btn btn-warning"><i class="fa fa-angle-left"></i> Tiếp tục mua hàng</a>
                        </td> 
                        <td colspan="2" class="hidden-xs"> </td> 
                        <td class="hidden-xs text-center">                            
                            <strong>Tổng tiền:
                                <%double total = 0.0;
                                    for (int i = 0; i < list.size(); i++) { 
                                          total = total+ list.get(i).getPrice() * list.get(i).getQuantity();                                       
                                    }
                                %>
                                <%=formatter.format(total)%> $
                            </strong>
                        </td> 
                        <%if (list.size() != 0) {%>
                        <td><a href="bill" class="btn btn-success btn-block">Thanh toán</a>
                        </td> 
                        <%}%>
                    </tr> 
                </tfoot> 
            </table>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/jquery-1.11.1.min.js"></script>
    </body>
</html>
