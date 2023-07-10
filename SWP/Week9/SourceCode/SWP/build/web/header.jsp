<%-- 
    Document   : header.jsp
    Created on : May 18, 2023, 8:30:02 PM
    Author     : Phan Nguyen Tu Anh
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="entity.User"%>
<%@page import="dao.UserDAO"%>
<%@page import="jakarta.servlet.http.Cookie" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        Cookie[] cookies = request.getCookies();
        int user_id = 0;
        User currUser = null;
        UserDAO ud = new UserDAO();
        if (cookies != null) {

            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("currUserId")) {
                    user_id = Integer.parseInt(cookie.getValue());
                    currUser = ud.getUserById(user_id);
                }
            }
        } 
        pageContext.setAttribute("currUser", currUser);
        pageContext.setAttribute("currUserId", user_id);
%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Template Mo">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">

        <title>Education Template - Meeting Detail Page</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
    </head>

    <body>
        <div class="sub-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-sm-8">
                        <div class="left-content">
                            <p>Đây là một website giúp các bạn tìm kiếm khóa học online phù hợp</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-4">
                        <div class="right-icons">

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ***** Header Area Start ***** -->
        <header class="header-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- *** Logo Start *** -->
                            <a href="homepage" class="logo">
                                Edu Meeting
                            </a>
                            <!-- *** Logo End *** -->
                            <!-- *** Menu Start *** -->
                            <ul class="nav">
                                <li><a href="homepage" class="active">TRANG CHỦ</a></li>
                                <li><a href="mycourselistservlet">KHÓA HỌC CỦA TÔI</a></li>
                                <li><a href="PricePackageSubcription">ĐƠN ĐĂNG KÝ CỦA TÔI</a></li>
                                    <c:if test="${currUser != null}">
                                        <c:if test="${currUser.getRoleId() == 1 || currUser.getRoleId() == 4 || currUser.getRoleId() == 5}">
                                        <li class="has-sub">
                                            <a href="javascript:void(0)">Pages</a>
                                            <ul class="sub-menu">
                                                <li><a href="DashBoard">DashBoard</a></li>
                                                <li><a href="postListEdit">POST LIST EDIT</a></li>
                                                <li><a href="slidersListEdit">SLIDER LIST EDIT</a></li>
                                            </ul>
                                        </li>
                                    </c:if>
                                </c:if>

                                <li><a href="PersonalAccountServlet?viewerId=${currUserId}&ProfileId=${currUserId}">TRANG CÁ NHÂN</a></li> 
                            </ul>        
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- *** Menu End *** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>


    </body>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
</html>
