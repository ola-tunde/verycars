<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>VeryCars</title>
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<spring:url value="css/style.css" var="styleacc" />
    <!-- Custom styles for this template -->
    <link href="${styleacc}" rel="stylesheet"/>
    <script src="js/script.js"></script>
  </head>
       <body>
       <jsp:include page="templates/header.jsp"/>
        <div id="centre" style= "background-image: url(img/fond.jpg)">
            <jsp:include page="templates/menu.jsp"/>

            <div id="Principal" class="milieu">
                <div id="acceuil">
                    <h3>Soyez very contents, choisissez Very Cars !</h3>
                    <img id="imgaccueil" class="responsive" src="img/accueil.jpg">
                </div>
            </div>
        </div>
        <jsp:include page="templates/footer.jsp"/>
	</body>
</html>