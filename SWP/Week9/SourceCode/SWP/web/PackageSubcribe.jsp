<%-- 
    Document   : PackageSubcribe.jsp
    Created on : Jul 8, 2023, 12:37:01 AM
    Author     : FPT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <section class="heading-page header-text">
            <div class="container">
                <div class="row">
                    <c:forEach items="${requestScope.packageList}" var="p">
                        <div class="pricePackageWrapper col-lg-3" style="padding: 10px; border: 1px solid black">
                            <div class="pricePackageItem" style="border: 1px solid black">
                                
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
