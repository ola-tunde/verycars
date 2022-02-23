package com.verycars.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.verycars.dao.VoitureService;
import com.verycars.model.Voiture;

@Controller

public class VoitureController {
	
	@Autowired
	VoitureService voitureService;
	
	@GetMapping(value="/sportives")
	protected ModelAndView showAllSportive(Model model) throws Exception{
		Iterable<Voiture> listVoiture = voitureService.findByType("sportives");
		return new ModelAndView("produit","voiture", listVoiture);
	}
	
	@GetMapping(value="/citadines")
	protected ModelAndView showAllCitadine(Model model) throws Exception{
		Iterable<Voiture> listVoiture = voitureService.findByType("citadines");
		return new ModelAndView("produit","voiture", listVoiture);
	}
	
	@GetMapping(value="/suv")
	protected ModelAndView showAllSuv(Model model) throws Exception{
		Iterable<Voiture> listVoiture = voitureService.findByType("suv");
		return new ModelAndView("produit","voiture", listVoiture);
	}
	
	@GetMapping(value="/berlines")
	protected ModelAndView showAllBerline(Model model) throws Exception{
		Iterable<Voiture> listVoiture = voitureService.findByType("berlines");
		return new ModelAndView("produit","voiture", listVoiture);
	}
	
	
}
