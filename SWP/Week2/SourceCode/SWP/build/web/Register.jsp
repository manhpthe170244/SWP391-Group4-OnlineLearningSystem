<%-- 
    Document   : Register
    Created on : May 15, 2023, 1:45:24 PM
    Author     : FPT
--%>
<%@page import="entity.user" %>
<%@page import="entity.gender" %>
<%@page import="entity.Role" %>
<%@page import="dao.RoleDAO" %>
<%@page import="dao.userDAO" %>
<%@page import="dao.genderDAO" %>
<%@page import="java.util.Vector" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%
    genderDAO gd = new genderDAO();
    RoleDAO rd = new RoleDAO();
    Vector<gender> genderList = gd.getAllGender();
    Vector<Role> roleList = rd.getAllRoleNotAdmin();
    pageContext.setAttribute("genderList", genderList);
    pageContext.setAttribute("roleList", roleList);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="register" enctype="multipart/form-data" method="POST">
            
            <h1>Please fill in your information</h1>
            Email: 
            <input type="text" name="email"><br>
            Password:
            <input type="type" name="password1"><br>
            Re-enter your password:
            <input type="type" name="password2"><br>
            Full name:
            <input type="text" name="fullname"><br>
            Image: 
            <input type="file" name="userImg" accept="image/*"><br>
            Gender: 
            <select name="gender">
                <c:forEach items="${genderList}" var="g">
                    <option value="${g.getGenderId()}">${g.getGenderName()}</option>
                </c:forEach>
            </select><br>
            Phone number: 
            <input type="tel" name="phone"><br>
            Address: 
            <input type="text" name="address"><br>
            Sign Up as: <br>
            <input type="radio" name="role" value="${roleList.get(0).getRoleId()}" checked="true"><c:out value="${roleList.get(0).getRoleName()}"/>
            <c:forEach var="r" begin="1" end="${roleList.size()-1}">
                <input type="radio" name="role" value="${roleList.get(r).getRoleId()}"><c:out value="${roleList.get(r).getRoleName()}"/>
            </c:forEach><br>
            <input type="submit" name="submit" value="Sign Up">
        </form>
    </body>
</html>
