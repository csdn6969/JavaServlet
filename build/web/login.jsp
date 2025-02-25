<%-- 
    Document   : login
    Created on : 13 May 2024, 13:09:40
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link
      href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
       <div class="login">
      <div class="login__container">
        <h1>Đăng Nhập</h1>
        <form action="login" method="post">
          <h5>Username</h5>
          <input type="text" name="username" class="input-login-username" />
          <h5>Password</h5>
          <input type="password" name="password" class="input-login-password" />
          <button type="submit" class="login_signInButton">Đăng Nhập</button>
        </form>
        <div class="create_resetAcc" style="display: flex;align-items: center; justify-content: space-between">
            <a href="./signup.jsp" class="login__registerButton"
          >Tạo tài khoản mới</a>
            <a href="./forgetAcc.jsp" style="margin: 20px 0 0; padding: 10px; display: inline-block">Quên mật khẩu</a>
        </div>
      </div>
    </div>
    </body>
</html>
