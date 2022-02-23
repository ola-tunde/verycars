package com.verycars.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.verycars.model.Utilisateur;

@Service  
@Transactional
public class UtilisateurServiceImpl implements UtilisateurService{
	
	@Autowired
	UtilisateurRepository utilisateurRepository;
	
	@Override
	public Integer save(Utilisateur utilisateur) throws Exception {
		utilisateur = utilisateurRepository.save(utilisateur);
		return utilisateur.getIdUtilisateur();
		}

	@Override
	public Utilisateur findByNom(String nom) {
		return utilisateurRepository.findByNom(nom);
	}
	
	@Override
	public Utilisateur findByMail(String mail) {
		return utilisateurRepository.findByMail(mail);
	}
}
