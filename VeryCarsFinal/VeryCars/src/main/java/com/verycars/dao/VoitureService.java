package com.verycars.dao;

import java.util.List;
import com.verycars.model.Voiture;

public interface VoitureService{
	public Integer save(Voiture voiture) throws Exception;
	Iterable<Voiture> findAll();
	Voiture getByIdVoiture(Integer idVoiture) throws Exception;
	Iterable<Voiture> findByType(String type);
	Voiture findByNom(String nom);
	}