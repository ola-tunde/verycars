function zoom(arg){
    var div = document.getElementById("zoom");
        div.style.display="block";
    document.getElementById("imgZoom").src=arg;
}

function unzoom(){
     var div = document.getElementById("zoom");
        div.style.display="none";
}

function affichestock(arg,arg2,arg3,arg4,arg5){
    var stock = document.getElementById(arg);
    var stock2 = document.getElementById(arg2);
    var stock3 = document.getElementById(arg3);
    var stock4 = document.getElementById(arg4);
    var stock5 = document.getElementById(arg5);
    if (stock.style.display=="block"){
        stock.style.display="none";
        stock2.style.display="none";
        stock3.style.display="none";
        stock4.style.display="none";
        stock5.style.display="none";
    }else{
        stock.style.display="block";
        stock2.style.display="block";
        stock3.style.display="block";
        stock4.style.display="block";
        stock5.style.display="block";
    }
}

function quantiteplus(arg,arg2){
    var q = document.getElementById(arg);
    if (q.value < arg2){
        q.value++ ;
    }
}

function quantitemoins(arg){
    var q = document.getElementById(arg);
    if (q.value >0){
        q.value-- ;
    }
}

function validation(){
    validNom("nom","formContact");
    validNom("prenom","formContact");
    majeur("anniv","formContact");
}

function validInsc(){
    validNom("nom","formInsc");
    validNom("prenom","formInsc");
    verifMdp();
    confirmMdp();
    majeur("anniv","formInsc");

}

function validNom(arg,arg2){
    var regex = /[a-zA-ZáàâäãåçéèêëíìîïñóòôöõúùûüýÿæœÁÀÂÄÃÅÇÉÈÊËÍÌÎÏÑÓÒÔÖÕÚÙÛÜÝŸÆŒ._\s\.\,\--]/;
    var champ = document.forms[arg2].elements[arg];
    var text = champ.value;
    for(let pas =0; pas<text.length; pas ++){
        if (text[pas].match(regex)){
            champ.style.backgroundColor="white";
            champ.setCustomValidity("");
        }
        else{
            champ.style.backgroundColor="#FF4848";
            champ.setCustomValidity("Veuillez ne pas entrer de caractères spéciaux");
            break;
        }
    }
}

function verifMdp(){
    var a = document.forms['formInsc'].elements['mdp'].value;
    var champ = document.forms['formInsc'].elements['mdp'];
    for(let pas =0; pas<a.length; pas ++){
        if (a[pas].match("@")){
            champ.style.backgroundColor="#FF4848";
            champ.setCustomValidity("Veuillez ne pas entrer de @");
            break;
        }
        else{
            champ.style.backgroundColor="white";
            champ.setCustomValidity("");
        }
    }
    
}

function majeur(arg,arg2){
    var anniv = new Date(document.forms[arg2].elements[arg].value);
    var annee = anniv.getFullYear();
    var mois = anniv.getMonth()+1;
    var jour = anniv.getDate();
     
    var today = new Date();
    var actuald = today.getDate();
    var actualm = today.getMonth()+1; 
    var actualy = today.getFullYear();
    
    var champ = document.forms[arg2].elements[arg];
    
    if((actualy - annee)>18){
        champ.style.backgroundColor="white";
        champ.setCustomValidity("");
    }else{
        if((actualy - annee)<18){
           champ.style.backgroundColor="#FF4848"; 
            champ.setCustomValidity("Désolé, ce site est réservé aux adultes");
        }else{
            if(actualm <mois){
                champ.style.backgroundColor="white";
                champ.setCustomValidity("");
            }else{
               if(actualm >mois){
                    champ.style.backgroundColor="#FF4848"; 
                   champ.setCustomValidity("Désolé, ce site est réservé aux adultes");
               }else{
                   if(actuald < jour){
                       champ.style.backgroundColor="#FF4848";
                       champ.setCustomValidity("Désolé, ce site est réservé aux adultes");
                   }else{
                       if(actuald >= jour){
                           champ.style.backgroundColor="white"; 
                           champ.setCustomValidity("");
                            }
                        }
                    }
                }
            }
        }
}

function connec(){
    var btnc = document.getElementById("Bconn");
    var btni = document.getElementById("Binsc");
    var btnv = document.getElementById("Bvalid");
    var btnr = document.getElementById("Bretour");
    var inpl = document.getElementById("b1");
    var inpm = document.getElementById("b2");
        
        btnc.style.transform = "translateX(200px)";
        btnc.style.transitionDuration = "2s";
        
        btni.style.transform = "translateX(200px)";
        btni.style.transitionDuration = "2s";
        
        btnv.style.display="block";
        btnr.style.display="block";
        inpl.style.display="block";
        inpm.style.display="block";
}


function retour(){
    var btnc = document.getElementById("Bconn");
    var btni = document.getElementById("Binsc");
    var btnv = document.getElementById("Bvalid");
    var btnr = document.getElementById("Bretour");
    var inpl = document.getElementById("b1");
    var inpm = document.getElementById("b2");
        
        
        btnc.style.transform = "translateX(0px)";
        btnc.style.transitionDuration = "2s";
        btnc.style.transform = "rotate(20deg)";
        
        btni.style.transform = "translateX(0px)";
        btni.style.transitionDuration = "2s";
        btni.style.transform = "rotate(20deg)";
        
        btnv.style.display="none";
        btnr.style.display="none";
        inpl.style.display="none";
        inpm.style.display="none";
}

function confirmMdp(){
    var a = document.forms['formInsc'].elements['mdp'].value;
    var b = document.forms['formInsc'].elements['mdp2'].value;
    var bb = document.forms['formInsc'].elements['mdp2'];
    if (a!=b) {
        bb.style.backgroundColor="#FF4848";
        bb.setCustomValidity("Les mots de passe ne correspondent pas.");
   	}
    else {
        bb.style.backgroundColor="white";
        bb.setCustomValidity("");
    }
    
}

function test(){
    var a = document.getElementById("connecForm");
    var b = document.getElementById("profil");
    var c = document.getElementById("Bdeco");
    var d = document.getElementById("Bpanier");
    a.style.display ="none";
    b.style.display ="block";
    c.style.display ="block";
    d.style.display ="block"
}

function modifDb(produit,val,stock){
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
        if (xhr.status == 200 && xhr.readyState == 4) {
            document.getElementById('content').innerHTML = xhr.responseText;
        }
    };

    xhr.open('GET', "panierDb.php?nom="+produit+"&quantite="+val+"&stock="+stock,true);
    xhr.send();
}