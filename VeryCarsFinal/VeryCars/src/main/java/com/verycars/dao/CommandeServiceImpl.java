package com.verycars.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.verycars.model.Commande;

@Service  
@Transactional
public class CommandeServiceImpl implements CommandeService {

	@Autowired
	private CommandeRepository commandeRepository;
	
	@Override
	public Commande getByIdCommande(Integer id) throws Exception{
		return (Commande) commandeRepository.getById(id);
	}
	
	@Override
	public Integer save(Commande commande) throws Exception{
		commande = commandeRepository.save(commande);
		return commande.getId();
	}
	
	@Override
	public Iterable<Commande> findAll(){
		return commandeRepository.findAll();
	}
	
	@Override
	public Iterable<Commande> findByUtilisateur(String utilisateur){
		return commandeRepository.findByUtilisateur(utilisateur);
	}
	
	@Override
	public Iterable<Commande> findByUtilisateurAndVoiture(String utilisateur, String voiture){
		return commandeRepository.findByUtilisateurAndVoiture(utilisateur,voiture);
	}
	
	@Override
	public Commande getByUtilisateurAndVoiture(String utilisateur, String voiture){
		return (Commande) commandeRepository.getByUtilisateurAndVoiture(utilisateur,voiture);
	}
	
	@Override
	public void delete(Commande persistentInstance) {
		commandeRepository.delete(persistentInstance);
	}
}
