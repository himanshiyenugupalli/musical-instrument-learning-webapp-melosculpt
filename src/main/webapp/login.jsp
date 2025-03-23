<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.melosculpt.utils.DBConnection" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</head>
<body>
    <div class="container">
        <div class="login-form">
            <div class="logo">
                <img src="${pageContext.request.contextPath}/images/Melosculptlogo.png" alt="Melosculpt Logo">
            </div>
            <h2>USER LOGIN</h2>

 <form action="LoginServlet" method="post">
    <label for="user_id">User ID</label>
    <input type="text" id="user_id" name="user_id" placeholder="Enter your User ID" required>

    <label for="password">Password</label>
    <input type="password" id="password" name="password" placeholder="Enter your password" required>

    <div class="form-options">
        <a href="#" style="color: #4f8cf7;">Forgot Password?</a>
        <label for="remember-me" class="remember-me">
            <input type="checkbox" id="remember-me" name="remember"> Remember me
        </label>
    </div>

    <button type="submit">Sign In</button>
</form>


            <p class="signup">
                Don't have an account? <a href="signup.jsp">Sign Up</a>
            </p>

           <%
    String message = (String) request.getAttribute("message");
    if (message != null) {
%>
    <p style="color:red;"><%= message %></p>
<% } %>
        </div>

        <div class="image-side">
            <img src="${pageContext.request.contextPath}/images/Musical Instrument.jpeg" alt="Musical Instruments">
        </div>
    </div>
</body>
</html>
    