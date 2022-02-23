<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html lang="en">
<html> 
    <head>
		<meta charset="UTF-8">
		 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title>Inscription</title>
		
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
                <form id="formInsc" method="POST" action="/inscription/newUser" modelAttribute="newUser">
                    <div id="contact">
                            <h2 id="titreinsc"> Bienvenu chez Very Cars</h2>
                            <br>
                            <label class="label"> Nom<sup>*</sup>: </label>
                            <input name="nom" id="nom" class="inputcontact" type="text" value="" placeholder="Entrez votre nom" required>
                            <br>
                            <label class="label"> Prénom<sup>*</sup>: </label>
                            <input name="prenom" id="prenom" class="inputcontact" type="text" value="" placeholder="Entrez votre prénom" >
                            <br>
                            <label class="label"> E-mail<sup>*</sup>: </label>
                            <input name="mail" class="inputcontact" type="email" value="" placeholder="abc@gmail.com" >
                            <br>
                            <label class="label"> Mot de passe<sup>*</sup>: </label>
                            <input name="mdp" id="mdp" class="inputcontact" type="password" value="" placeholder="Créez un mot de passe" required >
                            <br>
                            <label class="label"> Confirmez votre mdp<sup>*</sup>: </label>
                            <input id="mdp2" class="inputcontact" type="password" placeholder="Rentrez votre mdp" >
                            <br>
                            <label class="label date"> Date de naissance<sup>*</sup>: </label>
                            <input name="dateDn" id="anniv" value="" class="inputcontact date" type="date" >
                            <br>
                            <label class="label"> Pays: </label>
                            <input name="pays" class="inputcontact" type="text" value="" placeholder="Entrez votre Pays de résidence" >
                            <br>
                            <label class="label"> Code postale: </label>
                            <input name="codePostal" class="inputcontact" type="number" value="" placeholder="Entrez votre code postale" >
                            <br>
                            <label class="label"> Ville: </label>
                            <input name="ville" class="inputcontact" type="text" value="" placeholder="Entrez votre ville" >
                            <br>
                            <label class="label"> Adresse: </label>
                            <input name="adresse" class="inputcontact" type="text" value="" placeholder="Entrez votre adresse" >
                            <br>
                            <br>
                        </div>
                        <button name="inscription" onClick="validInsc()" id="bmail" class="btn btn-primary">Confirmer</button>
                    
                </form>

            </div>
        </div>
       <jsp:include page="templates/footer.jsp"/>
    </body>
</html>