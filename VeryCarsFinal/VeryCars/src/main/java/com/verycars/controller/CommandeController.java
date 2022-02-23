package com.verycars.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.verycars.dao.CommandeService;
import com.verycars.dao.UtilisateurService;
import com.verycars.dao.VoitureService;
import com.verycars.model.Commande;
import com.verycars.model.Utilisateur;
import com.verycars.model.Voiture;

@Controller
@RequestMapping("/") //make all URL's through this controller relative to /index
public class CommandeController {
	
	@Autowired
	CommandeService commandeService;

	@GetMapping(value="/panier")
	protected ModelAndView showPanier(Model model,HttpServletRequest request) throws Exception{
		String user = (String) request.getSession().getAttribute("nomUser");
		Iterable<Commande> listCommande = commandeService.findByUtilisateur(user);
		return new ModelAndView("panier","commande",listCommande);
	}
	
	@PostMapping(value="/ajoutPanier")
	public String ajouterVoiturePanier(@ModelAttribute("addProd") Commande commande,Model model,HttpServletRequest request) throws Exception {
		
		
		Iterable<Commande> listCommande = commandeService.findByUtilisateurAndVoiture(commande.getUtilisateur(),commande.getVoiture());
		
		if(listCommande.toString().length() == 2) {
			commandeService.save(commande);
		}
		else {
			Commande commande_bdd = commandeService.getByUtilisateurAndVoiture(commande.getUtilisateur(),commande.getVoiture());
			commande.setId(commande_bdd.getId());
			commande.setQuantite(commande.getQuantite()+commande_bdd.getQuantite());
			commandeService.save(commande);			
		}
		
		
		String referer = request.getHeader("Referer");
	    return "redirect:"+ referer;
		
	}
	
	@PostMapping(value="/suppPanier")
	public String suppVoiturePanier(@ModelAttribute("suppProd") Commande commande,Model model,HttpServletRequest request) throws Exception {
		Commande commande_bdd = commandeService.getByIdCommande(commande.getId());
		
		if(commande_bdd.getQuantite() > 1) {
			commande_bdd.setQuantite(commande_bdd.getQuantite()-1);
			commandeService.save(commande_bdd);
		}
		else {
			commandeService.delete(commande_bdd);	
		}
		
		
		String referer = request.getHeader("Referer");
	    return "redirect:"+ referer;
		
	}
}
