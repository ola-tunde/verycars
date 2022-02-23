package com.verycars.dao;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.verycars.model.Voiture;

@Service  
@Transactional
public class VoitureServiceImpl implements VoitureService{
	
	@Autowired
	private VoitureRepository voitureRepository;
	
	@Override
	public Voiture getByIdVoiture(Integer idVoiture) throws Exception{
		return (Voiture) voitureRepository.findByIdVoiture(idVoiture);
		}
	
	@Override
	public Integer save(Voiture voiture) throws Exception{
		voiture = voitureRepository.save(voiture);
		return voiture.getId();
		}

	@Override
	public Iterable<Voiture> findAll() {
		
		return voitureRepository.findAll();
	}

	@Override
	public Iterable<Voiture> findByType(String type) {
		
		return voitureRepository.findByType(type);
	}
	
	@Override
	public Voiture findByNom(String nom) {
		
		return voitureRepository.findByNom(nom);
	}
	
	}
