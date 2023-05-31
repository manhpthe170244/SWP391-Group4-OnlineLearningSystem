<%-- 
    Document   : header.jsp
    Created on : May 18, 2023, 8:30:02 PM
    Author     : Phan Nguyen Tu Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                            <a href="index.html" class="logo">
                                Edu Meeting
                            </a>
                            <!-- *** Logo End *** -->
                            <!-- *** Menu Start *** -->
                            <ul class="nav">
                                <li><a href="homepage" class="active">TRANG CHỦ</a></li>
                                <li><a href="mycourselistservlet">KHÓA HỌC CỦA TÔI</a></li>
                                <li class="scroll-to-section"><a href="#apply">ĐƠN ĐĂNG KÝ CỦA TÔI</a></li>
                                <li class="has-sub">
                                    <a href="javascript:void(0)">Pages</a>
                                    <ul class="sub-menu">
                                        <li><a href="meetings.html">Upcoming Meetings</a></li>
                                        <li><a href="meeting-details.html">Meeting Details</a></li>
                                    </ul>
                                </li>
                                <li><a href="PersonalAccountServlet">TRANG CÁ NHÂN</a></li> 
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
</html>
