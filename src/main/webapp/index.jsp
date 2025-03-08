<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.melosculpt.utils.DBConnection" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MeloSculpt - Music Instrument Learning</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/LandingPage.css">
</head>
<body>
    <!-- Header Section -->
    <header>
        <div class="logo">
            <img src="<%= request.getContextPath() %>/images/Melosculptlogo.png" alt="MeloSculpt Logo">
        </div>
        <nav>
            <ul>
                <li><a href="#about" class="nav-link">About</a></li>
                <li><a href="#how-it-works" class="nav-link">How It Works</a></li>
                <li><a href="#contact" class="nav-link">Contact Us</a></li>
                <li><a href="login.jsp" class="login-button">User Login</a></li>
                <li><a href="Adminlogin.jsp" class="admin-login-button">Admin Login</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-background"></div>
        <div class="hero-background" style="background-image: url('<%= request.getContextPath() %>/images/landingpagetop.png'); background-size: cover; background-position: center; position: absolute; top: 0; left: 0; width: 100%; height: 100%; z-index: 1;"></div>
        
        <div class="hero-text">
            <h2>Join exciting classes led by experienced professionals.</h2>
            <p>Sculpt your music skills with MeloSculpt, your guide to mastering the art of sound.</p>
            <a href="SignUp.jsp" class="start-button">Start Now</a>
        </div>
    </section>
    

    <!-- Classes Section -->
    <section class="classes">
        <h2>Upcoming Classes</h2>
        <div class="class-list">
            <div class="class-item">
                <img src="<%= request.getContextPath() %>/images/guitarbasic.jpeg" alt="Guitar Basics">
                <h3>Guitar Basics</h3>
            </div>
            <div class="class-item">
                <img src="<%= request.getContextPath() %>/images/pianobasic.jpeg" alt="Piano Basics">
                <h3>Piano Basics</h3>
            </div>
            <div class="class-item">
                <img src="<%= request.getContextPath() %>/images/ukulelebasic.jpeg" alt="Ukulele Basics">
                <h3>Ukulele Basics</h3>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about" class="about">
        <div class="container">
            <h2>About Us</h2>
            <p>
                MeloSculpt is an innovative online platform dedicated to teaching musical instruments, including guitar, ukulele, violin, and piano. We provide structured courses tailored to various skill levels, along with interactive tools and resources to enhance learning. Our team of experienced instructors is committed to fostering a supportive environment for students. Our mission is to make quality music education accessible and enjoyable for everyone, empowering aspiring musicians to develop their talents anytime, anywhere.
            </p>
        </div>
    </section>

    <!-- How It Works Section -->
    <section id="how-it-works" class="how-it-works">
        <div class="container">
            <h2>How It Works</h2>
            <p>
                At MeloSculpt, learning is made simple and enjoyable. Sign up for an account, choose your favorite instrument, and select a course that fits your skill level. Our instructors will guide you through interactive lessons, providing you with the tools and resources you need to succeed. With flexible scheduling and access to learning materials, you can progress at your own pace.
            </p>
        </div>
    </section>

    <!-- Contact Section -->
    <section id="contact" class="contact">
        <h2>Contact Us</h2>
        <p>📞 +91 7048469422</p>
        <p>✉️ melosculpt@gmail.com</p>
    </section>

    <script src="<%= request.getContextPath() %>/js/LandingPage.js"></script>
</body>
</html>
