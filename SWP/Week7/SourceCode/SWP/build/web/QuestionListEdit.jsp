<%-- 
    Document   : template
    Created on : May 18, 2023, 8:35:04 PM
    Author     : Phan Nguyen Tu Anh
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />


        <title>Education Template - Meeting Detail Page</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


        <!-- Additional CSS Files -->
        <link rel="stylesheet" href="assets/css/fontawesome.css">
        <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
        <link rel="stylesheet" href="assets/css/owl.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <link rel="stylesheet" href="assets/css/styling.css?version=52"/>


    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <!-- Cach su dung template: dung 2 the include de lay header va footer, sau do pass section o be duoi vao 
        giua roi chen noi dug trang vao phan ben duoi -->
        <section class="heading-page header-text">
            <div class="container">
                <div class="row">
                    <div class="QuestionListEdit">
                        <form action="EditQuizContent" method="Post">
                            <div class="col-12">
                                <h4>Tên bài quiz</h4>
                                <input type="text" name="quiz_name" value="${requestScope.quiz_name}" placeholder="nhập tên bài học">
                            </div>
                            <div class="col-12" style="display: none">
                                <h4>Tên bài quiz</h4>
                                <input type="text" name="quiz_id" value="${requestScope.quiz_id}" placeholder="nhập tên bài học">
                            </div>
                            <c:forEach items="${questionList}" var="q">
                                <div class="col-12 QuestionEdit">

                                    <input type="text" name="quesContent" value="${q.getQues_content()}"> 
                                    <div id="QuestionEdit${q.getQues_id()}">
                                        <c:forEach items="${q.getChoices()}" var="c">
                                            <div class="choiceEdit" id="choiceEdit${c.getChoice_id()}">
                                                <input class="tick" type="radio" name="rightChoiceFor${q.getQues_id()}" value="${c.getChoice_id()}"
                                                       <c:if test="${c.isIs_true() == true}">
                                                           checked="true"
                                                       </c:if>
                                                       >
                                                <input type="text" name="EditedChoiceContent" value="${c.getChoice_content()}">
                                                <button type="button" onclick="storeDeletion('${c.getChoice_id()}')">
                                                    <i class="fa-solid fa-trash-can"></i>
                                                </button>

                                            </div>
                                        </c:forEach>
                                    </div>


                                </div>
                                <button class="addnewchoicebtn" type="button" onclick="addnewChoice('${q.getQues_id()}')">
                                    <h4 style="color: #142254; font-size: 100%; margin: 10px"> <i class="fa-solid fa-plus"></i> Add new choice to this question</h4>
                                </button>
                            </c:forEach>
                            <input id="result" type="text" name="deletion" style="display: none">
                            <input id="Editsubmit" type="submit" name="name" value="Edit">
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="footer.jsp"/>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script>
                                    function storeDeletion(choice_id) {
                                        var currentDisplay1 = document.getElementById("choiceEdit" + choice_id);
                                        currentDisplay1.style.display = currentDisplay1.style.display != "none" ? "none" : "block";
                                        var url = "HandleChoiceDeletion?choice_id=" + encodeURIComponent(choice_id);
                                        var xmlHttp = new XMLHttpRequest();
                                        xmlHttp.open("POST", url, true);
                                        xmlHttp.onreadystatechange = function () {
                                            if (xmlHttp.readyState === 4 && xmlHttp.status === 200) {
                                                var result = document.getElementById("result");
                                                result.value += xmlHttp.responseText + ",";
                                            }
                                        };
                                        xmlHttp.send();
                                    }
                                    function addnewChoice(quesId) {
//                                        var a = document.getElementById('QuestionEdit' + quesId);
                                        var url = "AddChoice?quesId=" + encodeURIComponent(quesId);
                                        var xmlHttp = new XMLHttpRequest();
                                        xmlHttp.open("GET", url, true);
                                        xmlHttp.onreadystatechange = function () {
                                            if (xmlHttp.readyState === 4 && xmlHttp.status === 200) {
                                                var response = JSON.parse(xmlHttp.responseText);
                                                var a = document.getElementById('QuestionEdit' + quesId);
                                                a.innerHTML += "<div class='choiceEdit' id='choiceEdit" + response.maxChoiceId + "'><input class='tick' type='radio' name='rightChoiceFor" + quesId + "' value='"+ response.maxChoiceId +"'><input type='text' name='EditedChoiceContent' value='" + response.defaultChoiceContent +"'><button type='button' onclick='storeDeletion("+ response.maxChoiceId +")'><i class='fa-solid fa-trash-can'></i></button></div>";
                                                console.log(xmlHttp.responseText);
                                            }
                                        };
                                        xmlHttp.send();


                                    }
        </script>
    </body>
</html>
