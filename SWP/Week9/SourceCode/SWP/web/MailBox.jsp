<%-- 
    Document   : MailBox
    Created on : Jul 22, 2023, 2:01:05 PM
    Author     : FPT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="Template Mo">
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

        <title>Education Template - Meeting Detail Page</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <link href="https://fonts.cdnfonts.com/css/google-sans" rel="stylesheet">

        <style>
            .MailBoxWrapper{
                background-color: rgb(0,0,0, 0.3);
                padding: 0 !important;
            }
            .sidebar{
                background-color: rgb(50,52,54, 0.5);
                padding: 0 !important
            }
            .title{
                /*                border: white 1px solid;*/
                padding: 10px 15px;
                margin: 20px auto !important;
                color: white;
                /*                border-radius: 15px;*/
                background-color: #0b69a5
            }
            .navMail li{
                margin: 20px auto !important;
            }
            .navMail a{
                color: white !important;
                font-size: 130%
            }
            .item{
                border-bottom: #515151 1px solid;
            }
            .active{
                color: yellow !important;
                border-bottom: white 1px solid;
            }
            .active a{
                color: #c9a218 !important;

            }
            .messageItem{
                padding: 20px 0px 10px 30px
            }
            .from, .content{
                text-align: left
            }

        </style>
    </head>

    <body>
        <jsp:include page="header.jsp"/>

        <!-- Cach su dung template: dung 2 the include de lay header va footer, sau do pass section o be duoi vao 
        giua roi chen noi dug trang vao phan ben duoi -->
        <section class="heading-page header-text">
            <div class="containerFluid">
                <div class="row col-12" style="min-height: 600px">
                    <div class="sidebar col-2">
                        <div class="title col-12">
                            <h5 style="font-family: sans-serif"> Hòm thư </h5>

                        </div>
                        <div class="mailPages">
                            <ul class="navMail">
                                <li class="col-10">
                                    <div class=" item nav-link">
                                        <a href="MailBox?mode=inbox">Thư đến</a>
                                    </div>
                                </li>
                                <li class="col-10">
                                    <div class=" item nav-link">
                                        <a href="MailBox?mode=sent">Thư dã gửi</a>
                                    </div>
                                </li>
                                <li class="col-10">
                                    <div class=" item nav-link">
                                        <a href="MailBox?mode=reported">Thư đã báo cáo</a>
                                    </div>
                                </li>
                                <li class="col-10">
                                    <div class=" item nav-link">
                                        <a href="MailBox?mode=marked">Thư đã đánh dấu</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="MailBoxWrapper col-10">
                        <c:forEach items="${requestScope.displayList}" var="message">
                            <div class="col-11 messageItem">
                                <div class="from">
                                    <c:if test="${requestScope.mode.equals('inbox') || requestScope.mode.equals('reported') || requestScope.mode.equals('marked') }">
                                        <h6 style="color: white">
                                            Từ: ${message.getSender().getFullName()} 
                                        </h6>
                                        <p style="color: #8a8a8a; padding-left: 33px" >${message.getSender().getUserEmail()}</p>
                                    </c:if>
                                    <c:if test="${requestScope.mode.equals('sent') }">
                                        <h6 style="color: white">
                                            Tới: ${message.getReceiver().getFullName()} 
                                        </h6>
                                        <p style="color: #8a8a8a; padding-left: 37px" >${message.getReceiver().getUserEmail()}</p>
                                    </c:if>

                                </div>
                                <div class="content">
                                    <h6 style="color: white; display: inline-block">
                                        Nội dung: 
                                    </h6>
                                    <p style="color: white; padding-left: 30px;display: inline-block" >${message.getContent()}</p>
                                </div>
                            </div>
                            <hr style="color: white">
                        </c:forEach>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp"/>
        <script>
            // Get the current path from the URL
            const currentPath = window.location.pathname;
            console.log(currentPath);
            // Loop through each link and check if it matches the current path
            document.querySelectorAll('.nav-link a').forEach(link => {
                if (link.getAttribute('href') === currentPath) {
                    link.classList.add('active'); // Add the "active" class to the link
                } else {
                    link.classList.remove('active'); // Remove the "active" class from other links
                }
            });

        </script>
    </body>

</html>
