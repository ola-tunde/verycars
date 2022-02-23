package com.verycars.dao;

import com.verycars.model.Commande;

public interface CommandeService {
	public Integer save(Commande commande) throws Exception;
	Iterable<Commande> findAll();
	Commande getByIdCommande(Integer idCommande) throws Exception;
	Iterable<Commande> findByUtilisateur(String utilisateur);
	Iterable<Commande> findByUtilisateurAndVoiture(String utilisateur, String voiture);
	Commande getByUtilisateurAndVoiture(String utilisateur, String voiture);
	public void delete(Commande persistentInstance);
}
