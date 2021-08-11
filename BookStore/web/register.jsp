<%@page import="dal.AccountDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Register</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/login.css">
        <link rel="icon" href="images/logo.png" type="image/icon type">

    </head>
    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Tabs Titles -->
                <h2 class="active">Register</h2>
                <h3>${registerFailed}</h3>
                <!-- Icon -->
                <div class="fadeIn first">
                    <img src="images/logo.png" id="icon" alt="Web Icon" />
                </div>

                <!-- Login Form -->
                <form action="register" method="POST">
                    <input type="text" id="login" class="fadeIn second" name="accountName" placeholder="Username" required="">
                    <input type="email" id="login" class="fadeIn second" name="accountEmail" placeholder="Email" required="">
                    <input type="text" id="login" class="fadeIn second" name="accountPhone" placeholder="Phone" required="">
                    <input type="password" id="password" class="fadeIn third" name="accountPass" placeholder="Password" required="" onkeyup='check();'>
                    <input type="password" id="repassword" class="fadeIn third" name="rePassword" placeholder="Re-Password" required="" onkeyup='check();'>
                    <br>
                    <span id='message'></span>
                    <br>
                    <input type="submit" name="submit" onclick="return check();" class="fadeIn fifth" value="register">
                </form>
            </div>
        </div>
                
        <script>
            var check = function () {
                if (document.getElementById('password').value ===
                        document.getElementById('repassword').value) {
                    document.getElementById('message').style.color = 'green';
                    document.getElementById('message').innerHTML = 'Matching';
                    return true;
                } else {
                    document.getElementById('message').style.color = 'red';
                    document.getElementById('message').innerHTML = 'Not Matching';
                    return false;
                }
            };
        </script>
    </body>
</html>
