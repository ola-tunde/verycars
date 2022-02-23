package com.verycars.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.verycars.dao.UtilisateurService;
import com.verycars.model.Utilisateur;

@Controller
public class ConnexionController {
	
	@Autowired
	UtilisateurService utilisateurService;

	@PostMapping(value="/connexion")
	public String verifConnexion(@ModelAttribute("testConn") Utilisateur utilisateur,Model model,HttpServletRequest request, HttpServletResponse response)throws Exception {
		Utilisateur utilConn = utilisateurService.findByMail(utilisateur.getMail());
		if (utilConn != null) {
			if(utilConn.getMdp().equals(utilisateur.getMdp())) {
				HttpSession session = request.getSession();
				session.setAttribute("nomUser",utilConn.getNom());
				
				return "redirect:/";
			}else {
				return "";
			}
		}else {
			return "";
		}
	}
	
	@GetMapping(value="/deconnexion") 
	public String deconnexionUser(HttpServletRequest request) {
		HttpSession session = request.getSession(false); 
		if(session != null) {     
			session.invalidate();    
			}        
		return "redirect:/";     }
}
