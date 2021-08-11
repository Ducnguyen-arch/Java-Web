<%@page import="dal.AccountDAO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liên Hệ</title>
              <link rel="icon" href="images/logo.png" type="image/icon type">

        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="contact">
                <div class="container">
                    <h3>Liên Hệ</h3>
                    <br><br>
                    <div class="col-md-8 contact-grids1">
                        <form action="contact" method="POST">
                            <div class="contact-form2">
                                <h4>Họ và tên</h4>
                                <input type="text" placeholder="" name="name" required>
                            </div>
                            <div class="contact-form2">
                                <h4>Email</h4>
                                <input type="email" name="email" placeholder="" required>
                            </div>
                            <div class="contact-form2">
                                <h4>Tiêu đề</h4>
                                <input type="text" name="title" placeholder="" required>
                            </div>
                            <div class="contact-me ">
                                <h4>Lời nhắn</h4>
                                <textarea type="text" name="message"  placeholder="" required> </textarea>
                            </div>
                            <input type="hidden" name="command" value="insert">
                            <input type="submit" value="Gửi Liên Hệ" >
                        </form>
                    </div>               
                </div>
            </div>
            <div class="map">
                <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d8856.471859046651!2d106.09084442573108!3d21.04517759707094!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135a0e8d668eb19%3A0x762903004d018f78!2zMjHCsDAyJzQxLjciTiAxMDbCsDA1JzM0LjciRQ!5e0!3m2!1svi!2s!4v1605448342131!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>-->
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
