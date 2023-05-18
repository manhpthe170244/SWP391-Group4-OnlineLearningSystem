<%-- 
    Document   : demoList
    Created on : May 13, 2023, 11:09:46 AM
    Author     : FPT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.CourseDAO" %>
<%@page import="entity.Course" %>
<%@page import="java.util.Vector" %>

<!DOCTYPE html>
<%
    CourseDAO cd = new CourseDAO();
    Vector<Course> CourseList = cd.getAll();
    
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/styling.css?version=10"/>
    </head>
    <body>
        <div class="mainContent">
<<<<<<< HEAD
            <%=CourseList.size()%>
=======
            <%
            for(Course c : CourseList){
            %>
            <div class="courseBlock">
                <img src="<%=c.getCourse_img()%>" alt="alt"/>
                <h3><%=c.getCourse_title()%></h3>
            </div>
            <%

               }
            %>
>>>>>>> e14f367f5142a3c2c79ec1198c1ae988b185d920
        </div>
    </body>
</html>
