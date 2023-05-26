<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="entity.Course" %>
<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<html>

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="TemplateMo">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <title>Education Meeting HTML5 Template</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
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
                            <a href="register?method=POST"> register </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- *** Header Area Start *** -->
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
                                    <a href="javascript:void(0)">Blog</a>
                                    <ul class="sub-menu">
                                        <li><a href="meetings.html">Upcoming Meetings</a></li>
                                        <li><a href="meeting-details.html">Meeting Details</a></li>
                                    </ul>
                                </li>
                                <li class="scroll-to-section"><a href="PersonalAccountServlet">TRANG CÁ NHÂN</a></li> 
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
        <!-- *** Header Area End *** -->

        <!-- *** Main Banner Area Start *** -->
        <section class="section main-banner" id="top" data-section="section1">
            <video autoplay muted loop id="bg-video">
                <source src="assets/images/course-video.mp4" type="video/mp4" />
            </video>

            <div class="video-overlay header-text">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="caption">
                                <h6>Hello Students</h6>
                                <h2>Welcome to Education</h2>
                                <p>This is an edu meeting HTML CSS template provided by <a rel="nofollow" href="https://templatemo.com/page/1" target="_blank">TemplateMo website</a>. This is a Bootstrap v5.1.3 layout. The video background is taken from Pexels website, a group of young people by <a rel="nofollow" href="https://www.pexels.com/@pressmaster" target="_blank">Pressmaster</a>.</p>
                                <div class="main-button-red">
                                    <div class="scroll-to-section"><a href="#contact">Join Us Now!</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- *** Main Banner Area End *** -->

        <section class="services"> <!-- change this section to list of post categories -->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="owl-service-item owl-carousel">
                            <c:forEach items="${requestScope.sliderList}" var="slider">
                                <div class="item">
                                    <div class="icon">
                                        <img src="${slider.getSlider_img()}" alt="">
                                    </div>
                                    <div class="down-content">
                                        <h4><<a href="${slider.getSlider_link()}">${slider.getSlider_name()}</a></h4>
                                        <p>${slider.getSlier_title()}</p>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="upcoming-meetings" id="meetings">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-heading">
                            <h2>Các Khóa Học Nổi Bật</h2>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="categories">
                            <h4>Môn Học</h4> <!-- list ra danh sách các môn học, click môn học nào show ra 4 khóa học nổi bật của môn học đấy -->
                            <ul>
                                <c:forEach items="${requestScope.subjectList}" var="subject">
                                    <li><a href="homepage?sub_id=${subject.getSub_id()}">${subject.getSub_name()}</a></li><br>
                                    </c:forEach>
                            </ul>
                            <div class="main-button-red">
                                <a href="courseList?sub_id=1">Xem Tất Cả Các Khóa Học</a>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-8">
                        <div class="row">
                            <%
                            List<Course> courseList = (List<Course>)request.getAttribute("courseList");
                            %>
                            <div class="col-lg-6">
                                <div class="meeting-item">
                                    <div class="thumb">
                                        <div class="price">
                                            <span>$ <%=courseList.get(0).getCourse_price()%></span>
                                        </div>
                                        <a href="meeting-details.html"><img src="<%=courseList.get(0).getCourse_img()%>" alt="New Lecturer Meeting"></a>
                                    </div>
                                    <div class="down-content">
                                        <div class="date">
                                            <h6>Nov <span>10</span></h6>
                                        </div>
                                        <a href="meeting-details.html"><h4><%=courseList.get(0).getCourse_name()%></h4></a>
                                        <p><%=courseList.get(0).getCourseTilte()%></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="meeting-item">
                                    <div class="thumb">
                                        <div class="price">
                                            <span>$ <%=courseList.get(1).getCourse_price()%></span>
                                        </div>
                                        <a href="meeting-details.html"><img src="<%=courseList.get(1).getCourse_img()%>" alt="Online Teaching"></a>
                                    </div>
                                    <div class="down-content">
                                        <div class="date">
                                            <h6>Nov <span>24</span></h6>
                                        </div>
                                        <a href="meeting-details.html"><h4><%=courseList.get(1).getCourse_name()%></h4></a>
                                        <p><%=courseList.get(1).getCourseTilte()%></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6"> <!-- sửa các số trong jdbc thành 2 -->
                                <div class="meeting-item">
                                    <div class="thumb">
                                        <div class="price">
                                            <span>$ <%=courseList.get(0).getCourse_price()%></span>
                                        </div>
                                        <a href="meeting-details.html"><img src="<%=courseList.get(0).getCourse_img()%>" alt="Higher Education"></a>
                                    </div>
                                    <div class="down-content">
                                        <div class="date">
                                            <h6>Nov <span>26</span></h6>
                                        </div>
                                        <a href="meeting-details.html"><h4><%=courseList.get(0).getCourse_name()%></h4></a>
                                        <p><%=courseList.get(1).getCourseTilte()%></p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6"> <!-- sửa các số trong jdbc thành 3 -->
                                <div class="meeting-item">
                                    <div class="thumb">
                                        <div class="price">
                                            <span>$ <%=courseList.get(1).getCourse_price()%></span>
                                        </div>
                                        <a href="meeting-details.html"><img src="<%=courseList.get(0).getCourse_img()%>" alt="Student Training"></a>
                                    </div>
                                    <div class="down-content">
                                        <div class="date">
                                            <h6>Nov <span>30</span></h6>
                                        </div>
                                        <a href="meeting-details.html"><h4><%=courseList.get(1).getCourse_name()%></h4></a>
                                        <p><%=courseList.get(0).getCourseTilte()%></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="our-courses" id="courses">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-heading">
                            <h2>Bài Viết Mới</h2>
                        </div>
                    </div>   
                    <div class="col-lg-12">

                        <div class="owl-courses-item owl-carousel">
                            <c:forEach items="${requestScope.postList}" var="post">
                                <div class="item">
                                    <img src="${post.getPost_img()}" alt="Course One">
                                    <div class="down-content">
                                        <h4>${post.getPost_title()}</h4>
                                        <div class="info">
                                            <div class="row">
                                                <div class="col-4">

                                                </div>
                                                <div class="col-8">
                                                    <span>${post.getPost_date()}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="contact-us" id="contact">
            <div class="footer">
                <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved. 
                    <br>Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a></p>
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
</html>