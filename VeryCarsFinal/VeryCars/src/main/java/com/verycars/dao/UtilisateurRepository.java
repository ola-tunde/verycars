package com.verycars.dao;

import org.springframework.data.repository.CrudRepository;

import com.verycars.model.Utilisateur;

public interface UtilisateurRepository extends CrudRepository<Utilisateur, Integer>{
	Utilisateur findByNom(String nom);
	Utilisateur save(Utilisateur utilisateur);
	Utilisateur findByMail(String mail);

}
