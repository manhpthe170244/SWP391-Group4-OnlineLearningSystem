<%-- 
    Document   : BlogDetails
    Created on : May 19, 2023, 1:09:09 PM
    Author     : Phan Nguyen Tu Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="entity.QuesResult" %>
<%@ page import="entity.QuizResult" %>
<%@ page import="java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <style>

            .anh{
                background-color: gray;
            }

            th, td {
                text-align: left;
                padding: 8px;
                border: 1px solid #ddd;
                color: white;
            }

            .table-container {
                text-align: center;
            }

            table {
                display: block;
                margin: 0 auto;
                width: 1000px;
            }
            td{
                width: 850px;
            }
            th, td {
                text-align: left;
                padding: 8px;
                border: 1px solid #ddd;
            }
            .sidebar {
                width: 100%;

                padding: 20px;
                background-color: #f2f2f2;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }
            .sidebar h3 {
                margin-top: 0;
            }
            .search-form {
                margin-bottom: 20px;
            }
            .search-form input[type="text"] {
                width: 100%;
                padding: 10px;
                border: none;
                border-radius: 5px;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            }
            .widget-title {
                color: black;
            }
            .widgetre ul a {
                border: 1px solid black;
                border-radius: 5px;
                padding: 5px;
                margin-right: 5px;
            }
            .add-post-button {
                float: left;
                margin: 10px;
            }
            .navbar2 {
                left: -10px;
                background-color: #f9f9f9;
                border-bottom: 1px solid #e5e5e5;
                padding-top: 10px;
                padding-bottom: 10px;
            }

            .navbar2-brand {
                font-size: 20px;
                font-weight: bold;
                color: #333;
                margin-right: 10px;
                margin-left: 10px;
            }

            .navbar2-divider {
                font-size: 20px;
                color: #333;
                margin-right: 10px;
                margin-left: 10px;
            }
            .quiz-all {
                display: flex;
                flex-wrap: wrap;
                justify-content:  flex-start;

            }

            .quiz-square {
                width: 30px;
                height: 30px;
                margin: 3px;
                background-color: #ccc;
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 15px;
            }
            .table2 {
                border-collapse: collapse;
                width: 80%;
                margin: 0 auto;
            }

            .vertical-header {
                padding: 40px 20px;
            }
            .small-text{
                font-size: 12px;
                text-align: start;

            }
             .col-sm-9 table {
                     width: 100%;
            }

        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <!-- Cach su dung template: dung 2 the include de lay header va footer, sau do pass section o be duoi vao 
        giua roi chen noi dug trang vao phan ben duoi -->

        <% 
            Vector<QuesResult> quesResultList = (Vector<QuesResult>) request.getAttribute("quesResultList"); 
            Vector<String> correctAnswers = (Vector<String>) request.getAttribute("correctAnswers");
            QuizResult quizResult = (QuizResult) request.getAttribute("quizResult");
        %>
        <section class="heading-page header-text" style="padding-top: 100px;">

            <div class="container" style="margin-top: 30px;">
                <div class="row">

                    <div class="col-sm-9">
                        <table>
                            <tr>
                                <th>Start on:</th>
                                <td>0</td>
                            </tr>
                            <tr>
                                <th>State</th>
                                <td>finish</td>
                            </tr>
                            <tr>
                                <th>complate on</th>
                                <td>Sample Category</td>
                            </tr>
                            <tr>
                                <th>Time taken</th>
                                <td>Sample Feature</td>
                            </tr>
                            <tr>
                                <th>Mark</th>
                                <td>Active</td>
                            </tr>
                            <tr>
                                <th>Grade</th>
                                <td>John Doe</td>
                            </tr>


                        </table>
                        <table class="Table 2" style="margin: 50px 0">
                            <% for(int i = 0; i < quesResultList.size(); i++){ %>
                            <tr id="ques-section<%=i+1%>">
                                <th class="vertical-header top-header" rowspan="2">Question <%=i+1%><br>
                                    <span class="small-text">(Complete)</span><br>
                                    <span class="small-text">Flag: <%= quesResultList.get(i).isQues_flag() %></span>
                                </th>
                            <td>Câu hỏi <%=i+1%></td>
                            <td><%=quesResultList.get(i).isQues_status() ? "Đúng" : "Sai"%></td>
                            </tr>
                            <tr>
                                <td>Câu trả lời của bạn: <%=quesResultList.get(i).getQues_answer()%></td>
                                <td>Câu trả lời đúng: <%=correctAnswers.get(i) %></td>
                            </tr>
                            <% } %>
                        </table>
                    </div>
                    <div class="col-sm-3">
                        <div class="card bg-light mb-3" style="position: fixed; width: 25%">
                            <div class="sidebar">
                                <p>Quiz Navigation</p>
                                <div class="quiz-all mb-9">
                                    <%for(int i = 1; i <= quesResultList.size(); i++){
                                    if(i<10){%>
                                    <a href="#ques-section<%=i%>"><div class="quiz-square rounded">0<%=i%></div></a>
                                    <%}else{%>
                                    <a href="#ques-section<%=i%>"><div class="quiz-square rounded"><%=i%></div></a>
                                    <%}}%>
                                </div>
                            </div>
                            <div style="font-size: 10px">
                                <p><a href="">show one page that time</a></p>
                                <p><a href="QuizLesson?quiz_id=${requestScope.quizResult.getQuiz_id()}">Finish Review</a></p>
                            </div>                                       
                        </div>
                    </div>    
                </div>
            </div>
        </div>

    </section>



    <jsp:include page="footer.jsp"/>
</body>
</html>
