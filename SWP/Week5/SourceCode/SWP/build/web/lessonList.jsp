<%-- 
    Document   : quizzLesson
    Created on : May 28, 2023, 3:47:02 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="entity.Course" %>
<%@ page import="entity.Lesson" %>
<%@ page import="entity.Section" %>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title> Lesson List </title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <link rel="stylesheet" href="assets/css/styling.css?version=28">
        <!--
        
        TemplateMo 569 Edu Meeting
        
        https://templatemo.com/tm-569-edu-meeting
        
        -->
    </head>

    <body>
        <jsp:include page="header.jsp"/>

        <section class="heading-page header-text">
            <div class="container">
                <div class="row">
                    <h4 style="color: white; font-size: 250%; margin-bottom: 30px">Nội dung khoá học</h4>
                </div>

                <c:if test="${currUser.getRoleId() == 3 || currUser.getRoleId() == 1}">
                    <button class="CourseContentEditButton">
                        <i class="fas fa-edit fa-2x" style="color:#31c8ff"></i><h4 style="font-size: 150%">Chỉnh sửa nội dung khoá học</h4>
                    </button>
                </c:if>
                <div class="row">
                    <div class="CourseContent">
                        <c:forEach items="${SectionList}" var="s">
                            <div class="sectionHeader container-fluid" style="color:white">
                                <i class="fa fa-flag fa-2x"></i><h4>.   ${s.getSection_name()}</h4>
                                <h4 style="display: block; margin: 20px 0 0 63px">Video Lessons</h4>
                                <c:forEach items="${s.getLessonList()}" var="l">
                                    <c:if test="${l.isLesson_status() == true}">
                                        <div class="LessonDesc row">
                                            <div class="left col-10 les${l.getLesson_id()}">
                                                <a href="LessonDetail?lId=${l.getLesson_id()}" style="font-size: 150%">${l.getLesson_name()}</a>
                                                <button class="btnDes" onclick="toggleDisplay('des${l.getLesson_id()}')">
                                                    <i class="fa fa-caret-down fa-2x" style="color: white" aria-hidden="true"></i>
                                                </button>
                                                <p id="des${l.getLesson_id()}" style="color:white; display: none">${l.getLesson_desc()}</p>
                                            </div>
                                            <div class="lessonListEditright col-2">
                                                <c:if test="${currUser.getRoleId() == 3 || currUser.getRoleId() == 1}">
                                                    <button class="DeactivateButton" style="display: block" onclick="SetLessonStatus(0, ${l.getLesson_id()}, ${requestScope.Course_id})">
                                                        <i class="fa-solid fa-ban fa-2x" style="margin-right: 10px"></i><h4>Deactivate</h4>
                                                    </button>
                                                </c:if>
                                            </div>

                                        </div>
                                        <hr>
                                    </c:if>


                                </c:forEach>

                                <h4 style="display: block; margin: 20px 0 0 63px">Practice Quizzes</h4>
                                <c:forEach items="${s.getQuizList()}" var="q">
                                    <div class="LessonDesc row">
                                        <c:if test="${q.isQuiz_status() == true}">
                                            <div class="left col-10">
                                                <a href="QuizLesson?quiz_id=${q.getQuiz_id()}" style="font-size: 150%">${q.getQuiz_name()}</a>
                                                <p id="quiz${q.getQuiz_id()}" style="color:white">${q.getQuiz_desc()}</p>
                                            </div>
                                            <div class="lessonListEditright col-2">
                                                <c:if test="${currUser.getRoleId() == 3 || currUser.getRoleId() == 1}">
                                                    <button class="DeactivateButton" style="display: block" onclick="SetQuizStatus(0, ${q.getQuiz_id()}, ${requestScope.Course_id})">
                                                        <i class="fa-solid fa-ban fa-2x" style="margin-right: 10px"></i><h4>Deactivate</h4>
                                                    </button>
                                                </c:if>
                                            </div>
                                            <hr>
                                        </c:if>
                                    </div>

                                </c:forEach>



                            </div>
                            <c:if test="${currUser.getRoleId() == 3 || currUser.getRoleId() == 1}">
                                <div class="disabledLesson">
                                    <div class="disabledLessonheader" style="color: white">
                                        <i class="fa-solid fa-trash-can fa-shake fa-2x"></i></i><h4>Disabled lessons</h4>
                                    </div>

                                    <c:forEach items="${s.getLessonList()}" var="l">
                                        <c:if test="${l.isLesson_status() == false}">
                                            <div class="LessonDesc row">
                                                <div class="left col-10 les${l.getLesson_id()}">
                                                    <a href="LessonDetail?lId=${l.getLesson_id()}" style="font-size: 150%">${l.getLesson_name()}</a>
                                                    <button class="btnDes" onclick="toggleDisplay('des${l.getLesson_id()}')">
                                                        <i class="fa fa-caret-down fa-2x" style="color: white" aria-hidden="true"></i>
                                                    </button>
                                                    <p id="des${l.getLesson_id()}" style="color:white; display: none">${l.getLesson_desc()}</p>
                                                </div>
                                                <div class="lessonListEditright col-2">
                                                    <c:if test="${currUser.getRoleId() == 3 || currUser.getRoleId() == 1}">
                                                        <button class="activateButton" style="display: block" onclick="SetLessonStatus(1, ${l.getLesson_id()}, ${requestScope.Course_id})">
                                                            <i class="fa-solid fa-check fa-2x" style="margin-right: 10px"></i><h4>Activate</h4>
                                                        </button>
                                                    </c:if>
                                                </div>

                                            </div>
                                            <hr>
                                        </c:if>


                                    </c:forEach>

                                </div>
                                <div class="disabledLesson">
                                    <div class="disabledLessonheader" style="color: white">
                                        <i class="fa-solid fa-trash-can fa-shake fa-2x"></i></i><h4>Disabled quizzes</h4>
                                    </div>

                                    <c:forEach items="${s.getQuizList()}" var="q">
                                        <div class="LessonDesc row">
                                            <c:if test="${q.isQuiz_status() == false}">
                                                <div class="left col-10">
                                                    <a href="QuizLesson?quiz_id=${q.getQuiz_id()}" style="font-size: 150%">${q.getQuiz_name()}</a>
                                                    <p id="quiz${q.getQuiz_id()}" style="color:white">${q.getQuiz_desc()}</p>
                                                </div>
                                                <div class="lessonListEditright col-2">
                                                    <c:if test="${currUser.getRoleId() == 3 || currUser.getRoleId() == 1}">
                                                        <button class="activateButton" style="display: block" onclick="SetQuizStatus(1, ${q.getQuiz_id()}, ${requestScope.Course_id})">
                                                            <i class="fa-solid fa-check fa-2x" style="margin-right: 10px"></i><h4>Activate</h4>
                                                        </button>
                                                    </c:if>
                                                </div>
                                                <hr>
                                            </c:if>
                                        </div>

                                    </c:forEach>

                                </div>
                            </c:if>


                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp"/>


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

                                                            function SetLessonStatus(updateStatus, lessonId, courseId) {
                                                                //Send an AJAX request to your server-side script
                                                                $.ajax({
                                                                    url: "UpdateLessonStatus",
                                                                    type: "GET",
                                                                    data: {lessonId: lessonId,
                                                                        updateStatus: updateStatus
                                                                    },

                                                                    success: function (response) {
                                                                        console.log("success");
                                                                        window.location.href = "LessonListController?Course_id=" + courseId;
                                                                    }
                                                                });
                                                            }
                                                            function SetQuizStatus(updateStatus, QuizId, courseId) {
                                                                //Send an AJAX request to your server-side script
                                                                $.ajax({
                                                                    url: "UpdateQuizStatus",
                                                                    type: "POST",
                                                                    data: {Quizid: QuizId,
                                                                        updateStatus: updateStatus
                                                                    },

                                                                    success: function (response) {
                                                                        console.log("success");
                                                                        window.location.href = "LessonListController?Course_id=" + courseId;
                                                                    }
                                                                });
                                                            }
                                                            function toggleDisplay(DesId) {
                                                                var currentDisplay = document.getElementById(DesId);
                                                                currentDisplay.style.display = currentDisplay.style.display != "none" ? "none" : "block";
                                                                console.log(DesId);
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

