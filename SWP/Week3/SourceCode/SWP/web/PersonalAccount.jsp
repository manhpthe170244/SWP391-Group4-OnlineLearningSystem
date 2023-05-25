<%-- 
    Document   : PersonalAccount
    Created on : May 18, 2023, 6:37:48 PM
    Author     : FPT
--%>
<%@page import="entity.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Template Mo">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <title> Personal Info </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css?version=12">
        <link rel="stylesheet" href="assets/css/owl.css?version=10">
        <link rel="stylesheet" href="assets/css/lightbox.css?version=10">
        <link rel="stylesheet" href="assets/css/styling.css?version=14">
        <!--
        
        TemplateMo 569 Edu Meeting
        
        https://templatemo.com/tm-569-edu-meeting
        
        -->
    </head>

    <body>



        <!-- Sub Header -->
        <div class="sub-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-sm-8">
                        <div class="left-content">
                            <!--                            <p>Đây là một website giúp các bạn tìm kiếm khóa học online phù hợp</p>-->
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
                            <a href="index.html" class="logo">
                                Edu Meeting
                            </a>
                            <!-- *** Logo End *** -->
                            <!-- *** Menu Start *** -->
                            <ul class="nav">
                                <li class="scroll-to-section"><a href="#top" class="active">TRANG CHỦ</a></li>
                                <li><a href="meetings.html">KHÓA HỌC CỦA TÔI</a></li>
                                <li class="scroll-to-section"><a href="#apply">ĐƠN ĐĂNG KÝ CỦA TÔI</a></li>
                                <li class="has-sub">
                                    <a href="javascript:void(0)">Pages</a>
                                    <ul class="sub-menu">
                                        <li><a href="meetings.html">Upcoming Meetings</a></li>
                                        <li><a href="meeting-details.html">Meeting Details</a></li>
                                    </ul>
                                </li>
                                <li class="scroll-to-section"><a href="#courses">TRANG CÁ NHÂN</a></li> 
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
        <!-- ***** Header Area End ***** -->

        <section class="heading-page header-text">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 offset-1">
                        <img class="rounded-circle shadow-4-strong" src="${currUser.getUserImg()}" alt="alt"/>
                        <p style="color: white; margin-top: 15px">"Lorem ipsum dolor sit amet, consectetur adipiscing elit."</p>
                    </div>
                    <div class="col-lg-8 Per">
                        <h2 style="font-size: 150%; display: inline-block">Personal Info</h2> 
                        <div class="EditProfileButton">
                            <a href="#">Edit Profile</a>
                        </div>
                        <div class="PersonalInfo">
                            <div style="color: white;" class="PersonalInfo-left">                 
                                <h4>Full Name:</h4>
                                <h4>Gender:</h4>
                                <h4>Date of birth:</h4>
                                <h4>Phone number:</h4>
                                <h4>Address: </h4>
                                <h4>Budget: </h4>
                                <h4>Registration date: </h4>
                            </div>
                            <div style="color: white;" class="PersonalInfo-right">
                                <h4>${currUser.getFullName()}(${role.getRoleName()})</h4>
                                <h4>${gender.getGenderName()}</h4>
                                <h4>${currUser.getDob()}</h4>
                                <h4>${currUser.getUserPhone()}</h4>
                                <h4>${currUser.getUserAddress()}</h4>
                                <h4>${currUser.getUserWallet()} (vnd)</h4>
                                <h4>${currUser.getUserTime()}</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row myCourse">
                    <div class="col-lg-10 offset-1">
                        <h2 style="font-size: 150%; text-align: left">My Courses</h2> 
                    </div>
                    <div class="cucourseList col-lg-10 offset-1">
                        <c:forEach items="${currUserCourses}" var="cuc">
                            <a href="#">
                                <div class="CourseCell">
                                    <img src="${cuc.getCourse_img()}" alt="alt"/>
                                    <div class="CourseCell_Info">
                                        <h4>${cuc.getCourse_name()}</h4>
                                        <p>${cuc.getCourse_desc()}</p>
                                    </div>
                                </div>
                            </a>
                        </c:forEach>
                    </div>
                </div>
                <div class="row LogOutButton">
                    <a href="logout">Log Out</a>
                </div>
            </div>
        </section>

        <section class="meetings-page" id="meetings">

            <div class="footer">
                <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. 
                    <br>Design: <a href="https://templatemo.com/page/1" target="_parent" title="website templates">TemplateMo</a></p>
            </div>
        </section>


        <!-- Scripts -->
        <!-- Bootstrap core JavaScript -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <script src="assets/js/isotope.min.js"></script>
        <script src="assets/js/owl-carousel.js"></script>
        <script src="assets/js/lightbox.js"></script>
        <script src="assets/js/tabs.js"></script>
        <script src="assets/js/isotope.js"></script>
        <script src="assets/js/video.js"></script>
        <script src="assets/js/slick-slider.js"></script>
        <script src="assets/js/custom.js"></script>
        <script>
            //according to loftblog tut
            $('.nav li:first').addClass('active');

            var showSection = function showSection(section, isAnimate) {
                var
                        direction = section.replace(/#/, ''),
                        reqSection = $('.section').filter('[data-section="' + direction + '"]'),
                        reqSectionPos = reqSection.offset().top - 0;

                if (isAnimate) {
                    $('body, html').animate({
                        scrollTop: reqSectionPos},
                            800);
                } else {
                    $('body, html').scrollTop(reqSectionPos);
                }

            };

            var checkSection = function checkSection() {
                $('.section').each(function () {
                    var
                            $this = $(this),
                            topEdge = $this.offset().top - 80,
                            bottomEdge = topEdge + $this.height(),
                            wScroll = $(window).scrollTop();
                    if (topEdge < wScroll && bottomEdge > wScroll) {
                        var
                                currentId = $this.data('section'),
                                reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                        reqLink.closest('li').addClass('active').
                                siblings().removeClass('active');
                    }
                });
            };

            $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
                e.preventDefault();
                showSection($(this).attr('href'), true);
            });

            $(window).scroll(function () {
                checkSection();
            });
        </script>
    </body>


</body>

</html>