

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>

    <div>
        <img id="logo" src="img/logo.png">
        
    </div>
    <div>
        <img id="titre" src="img/titre.png">
    </div>
    <c:if test="${sessionScope.nomUser == null}">
    <form id="connecForm" method="POST" action="/connexion" modelAttribute="testConn">
	    <button onClick="connec()" type="button" id="Bconn" class=" btn btn-primary StyleBtn">Connexion</button>
	    <input id="b1" name="mail" class="responsive " type="email" placeholder="Entrez votre login" name="nom"> 
	    <input id="b2" name="mdp" class="responsive " type="text" placeholder="Entrez votre mot de passe" name="nom">
	    
	    <a href="/inscription" ><button type="button" id="Binsc" class=" btn btn-primary StyleBtn">Inscription</button></a>
	    
	    <button name="connexion" id="Bvalid" class=" btn btn-primary StyleBtn ">Valider</button>
	    <button onClick="retour()" type="button" id="Bretour" class=" btn btn-primary StyleBtn ">Retour</button> 
    </form>
    </c:if>
    
   <c:if test="${sessionScope.nomUser != null}">
	   	<div id='profil'> Connecté en tant que : ${sessionScope.nomUser} </div>
	  	<a href="/deconnexion" ><button name='deco' id='Bdeco' class=' btn btn-primary StyleBtn '>Déconnexion</button></a>
	  	<a href="/panier" ><button id='Bpanier' class='btn btn-primary StyleBtn '>Afficher mon panier</button></a>
    </c:if>
    
    <div id="nav">
        <ul>
            <li id="m1"><a href="/sportives" class="menuHead" >Sportive</a></li>
            <li id="m2"><a href="/citadines" class="menuHead">Citadine</a></li>
            <li id="m3"><a href="/suv" class="menuHead">SUV</a></li>
            <li id="m4"><a href="/berlines" class="menuHead">Berline</a></li>
            
        </ul>
    </div>
</header>