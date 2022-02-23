package com.verycars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.verycars.dao.UtilisateurRepository;
import com.verycars.dao.UtilisateurService;
import com.verycars.model.Utilisateur;

@Controller
@RequestMapping("/")
public class InscriptionController {

	@Autowired
	UtilisateurService utilisateurService;
	
	@GetMapping(value="/inscription")
	protected ModelAndView showInscription(Model model) throws Exception{
		return new ModelAndView("inscription");
	}
	
	@PostMapping(value="/inscription/newUser")
	public String ajouterUnUtilisateur(@ModelAttribute("newUser") Utilisateur utilisateur,Model model) throws Exception {
		System.out.println(utilisateur);
		utilisateurService.save(utilisateur);
		return "redirect:/";
	}
}
