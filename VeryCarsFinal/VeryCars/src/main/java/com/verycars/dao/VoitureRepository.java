package com.verycars.dao;

import java.util.List;
import org.springframework.data.repository.CrudRepository;
import com.verycars.model.Voiture;

public interface VoitureRepository extends CrudRepository<Voiture, Integer>{
	Voiture findByIdVoiture(Integer idVoiture);
	Iterable<Voiture> findAll();
	Voiture save(Voiture voiture);
	Iterable<Voiture> findByType(String type);
	Voiture findByNom(String nom);
	}