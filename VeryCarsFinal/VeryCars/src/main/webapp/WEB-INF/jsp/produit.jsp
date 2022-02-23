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
	<title>Voiture</title>
	 
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
                
                <c:forEach var="car" items="${voiture}">
                	
	                <div id="v1" class=" voiture">
	                    <img onClick="zoom(this.src)" class="imgv responsive" src="${car.image}">
	                    <div id="info">
	                        <div class="nomv"> ${car.nom} </div>
	                        <div class="desv "> 
	                            Description : ${car.description}
	                            
	                        </div>
	                    </div>
	                    <div class="prixv"> Prix : ${car.prix} €</div>
	                    <div id="info2">
	                        
	                        <div id="s1" class="stock"> Le stock est de : ${car.stock}
	                            <input class="inputstock" type="number" value="stock" placeholder="" disabled>
	                        </div>
	                        
	                        <div class="quantite">
	                        <c:if test="${sessionScope.nomUser != null}">
	                            <form id="formAddProd" method="POST" action="/ajoutPanier" modelAttribute="addProd">
	                                <button name="ajPanier" class="btn btn-danger btnv"> Ajouter au panier </button>
	                                <br>
	                                <button type="button" class="moins" OnClick="quantitemoins('${car.nom}')" >-</button>
	                                <input name="quantite" id="${car.nom}" class="commande" type="number" value="5" required readonly>
	                                <button type="button" class="plus" OnClick="quantiteplus('${car.nom}',15)">+</button>
	                                <input type="hidden" id="varCache" value="" >
	                                <input name="utilisateur" type="hidden" value="${sessionScope.nomUser}" >
	                                <input name="voiture" type="hidden" value="${car.nom}" >
	                                <input name="image" type="hidden" value="${car.image}" >
	                                <input name="prix" type="hidden" value="${car.prix}" >
	                                <input name="description" type="hidden" value="${car.description}" >
	                            </form>
	                         </c:if>
	                            
	                            <div id="content" type="hidden"></div>
	                             
	                            
	                       </div>    
	                    </div>
	                </div>
	                
                </c:forEach>
            </div>
        </div>
        
		<jsp:include page="templates/footer.jsp"/>
	</body>
</html>