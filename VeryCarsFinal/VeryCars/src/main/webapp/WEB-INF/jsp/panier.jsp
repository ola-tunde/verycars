<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="UTF-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Panier</title>
	 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<spring:url value="css/style.css" var="styleacc" />
	
	
    <link href="${styleacc}" rel="stylesheet"/>
    <script src="js/script.js"></script>
	</head>
	<body>
		<jsp:include page="templates/header.jsp"/>
		<div id="centre" style= "background-image: url(img/fond.jpg)">
            <jsp:include page="templates/menu.jsp"/>
            <div id="Principal" class="milieu">
			<c:forEach var="car" items="${commande}">
				<div id="v1" class=" voiture">
			 		<img onClick="zoom(this.src)" class="imgv responsive" src="${car.image}">
                                <div id="info">
                                    <div class="nomv"> ${car.voiture} </div>
                                    <div class="desv "> 
                                        Description : 
                                            ${car.description}
                                    </div>
                                </div>
                                <div class="prixv"> Prix :  ${car.prix} € </div>
                                <div class="qPanier"> Quantité : ${car.quantite} </div>
                                <form id="formSuppProd" method="POST" action="/suppPanier" modelAttribute="suppProd">
                                    <button name="b" class="btn btn-danger suppPanier"> Supprimer du panier </button>
                                    <input name="id" type="hidden" value="${car.id}" >
                                </form>
			 	</div>
			</c:forEach>        
            
        </div>
        </div>
		<jsp:include page="templates/footer.jsp"/>
	</body>
</html>