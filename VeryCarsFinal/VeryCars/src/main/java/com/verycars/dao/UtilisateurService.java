package com.verycars.dao;

import com.verycars.model.Utilisateur;

public interface UtilisateurService {
	Utilisateur findByNom(String nom);
	public Integer save(Utilisateur utilisateur) throws Exception;
	Utilisateur findByMail(String mail);

}
