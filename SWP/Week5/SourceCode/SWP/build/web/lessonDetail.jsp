<%-- 
    Document   : quizzLesson
    Created on : May 28, 2023, 3:47:02 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="entity.Course" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Vector" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Template Mo">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <title> Lesson List </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <style>
            .topnav {
                width: 20%;
                margin: 0 auto;
                overflow: hidden;
                margin-bottom: 50px;
            }
            .topnav .search-container {
                float: right;
            }

            .topnav input[type=text] {
                padding: 6px;
                margin-top: 8px;
                font-size: 17px;
                border: none;
            }

            .topnav .search-container button {
                float: right;
                padding: 6px 10px;
                margin-top: 8px;
                margin-right: 16px;
                background: #ddd;
                font-size: 17px;
                border: none;
                cursor: pointer;
            }

            .topnav .search-container button:hover {
                background: #ccc;
            }

            .badge-success {
                display: inline-block;
                padding: 5px 10px;
                font-size: 14px;
                font-weight: bold;
                color: #ffffff;
                background-color: #28a745;
                border-radius: 4px;
            }

            .badge-danger {
                display: inline-block;
                padding: 5px 10px;
                font-size: 14px;
                font-weight: bold;
                color: #ffffff;
                background-color: #dc3545;
                border-radius: 4px;
            }
        </style>
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
                                <li class="scroll-to-section"><a href="homepage" class="active">TRANG CHỦ</a></li>
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

        <section class="heading-page header-text tQuiz" id="top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                       
                        <h2>
                            ${lesson.course.course_name}
                            &#32;&#45;&#32;
                            ${lesson.lesson_name}
                        </h2>
                    </div>
                </div>
            </div>
        </section>
        <section class="meetings-page" style="padding-top: 0px;" id="meetings" >
            <div class="container p-3" style="color: white;">
                <div class="row">
                    <div class="col-lg-8">
                        <h2>${lesson.lesson_name}</h2>
                    </div>
                     <div class="col-lg-4">
                         &lsaquo;<a href="${pageContext.request.contextPath}/lessonDetail?lId=${lesson.lesson_id-1}" >Trước</a>&#32;
                         <a href="${pageContext.request.contextPath}/lessonDetail?lId=${lesson.lesson_id+1}" >Tiếp Theo</a>&rsaquo;
                    </div>
                </div>
            </div>
        </div>
        <div class="container" >
            <div class="row">
                <div class="col-lg-12">
                    <table class="table table-dark">
                        <tbody>
                            <tr>
                                <td>
                                    <iframe width="1300" height="600" src="${lesson.lesson_video}" frameborder="0" allowfullscreen></iframe>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h2>
                                        Giới thiệu bài học
                                        <c:if test="${lesson.lesson_status}">
                                            <span class="badge-success">active</span>
                                        </c:if>
                                        <c:if test="${!lesson.lesson_status}">
                                            <span class="badge-success">not active</span>
                                        </c:if>
                                    </h2>
                                    <strong style="color: white;" >Last Defined: </strong> <span id="formattedDate"></span>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p style="color: white;" >
                                        <strong style="color: white;" >Duration: </strong>
                                        <c:if test="${lesson.course.duration > 1}">
                                            ${lesson.course.duration} days
                                        </c:if>
                                        <c:if test="${lesson.course.duration == 1}">
                                            ${lesson.course.duration} day
                                        </c:if>
                                    </p><br>
                                    <p style="color: white;" >
                                        ${lesson.lesson_desc}
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="footer">
            <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. 
                <br>Design: <a href="https://templatemo.com/page/1" target="_parent" title="website templates">TemplateMo</a></p>
        </div>


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
            var dateString = "${lesson.course.last_update}";
            var date = new Date(dateString);
            var formattedDate = ('0' + date.getDate()).slice(-2) + '/' + ('0' + (date.getMonth() + 1)).slice(-2) + '/' + date.getFullYear();
            document.getElementById("formattedDate").innerHTML = formattedDate;
            //according to loftblog tut
            $('.nav li:first').addClass('active');

            // set sort_type
            const sortType = document.getElementById("sortType");
            sortType.addEventListener("change", function () {
                if (sortType.value === "recent") {
                    window.location.href = "?sort_type=recent";
                } else if (sortType.value === "name") {
                    window.location.href = "?sort_type=name";
                }
            });

            var paramValue = "${sessionScope.sort_type}";
            for (var i = 0; i < sortType.options.length; i++) {
                if (sortType.options[i].value === paramValue) {
                    sortType.options[i].selected = true;
                    break;
                }
            }



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

