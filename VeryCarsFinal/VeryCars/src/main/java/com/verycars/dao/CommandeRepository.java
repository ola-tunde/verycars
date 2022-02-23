package com.verycars.dao;

import org.springframework.data.repository.CrudRepository;

import com.verycars.model.Commande;

public interface CommandeRepository extends CrudRepository<Commande,Integer>{
	Commande save(Commande commande) ;
	Iterable<Commande> findAll();
	Commande getById(Integer id);
	Iterable<Commande> findByUtilisateur(String utilisateur);
	Iterable<Commande> findByUtilisateurAndVoiture(String utilisateur, String voiture);
	Commande getByUtilisateurAndVoiture(String utilisateur, String voiture);
	void delete(Commande persistentInstance);
}
