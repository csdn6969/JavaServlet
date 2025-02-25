<%-- 
    Document   : signup
    Created on : 13 May 2024, 13:10:05
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
    <link rel="stylesheet" href="css/signup.css">
    </head>
    <body>
       <div class="signup">
      <div class="signup__container">
        <h1>Đăng Ký</h1>
        <form action="signup" method="post">
            <h5>
                Username
            </h5>
            <input type="text" name="username" class="input-signup-username" />
          <h5>Email</h5>
          <input type="text" name="email" class="input-signup-username" />
          <h5>Password</h5>
          <input type="password" name="password" class="input-signup-password" />
          <button type="submit" class="signup_signInButton">Đăng Ký</button>
        </form>
      </div>
    </div>
    </body>
</html>
