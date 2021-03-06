package com.verycars.model;
// Generated 19 déc. 2021 à 20:06:44 by Hibernate Tools 5.4.14.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;

/**
 * Utilisateur generated by hbm2java
 */
@Entity
public class Utilisateur implements java.io.Serializable {

	/**
	 * 
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_utlilisateur")
	private Integer idUtilisateur;
	private String nom;
	private String prenom;
	private String mail;
	private String mdp;
	@Column(name="date_dn")
	private String dateDn;
	private String pays;
	@Column(name="code_postal")
	private Integer codePostal;
	private String ville;
	private String adresse;

	public Utilisateur() {
	}

	public Utilisateur(String nom, String prenom, String mail, String mdp, String dateDn, String pays,
			Integer codePostal, String ville, String adresse) {
		
		this.nom = nom;
		this.prenom = prenom;
		this.mail = mail;
		this.mdp = mdp;
		this.dateDn = dateDn;
		this.pays = pays;
		this.codePostal = codePostal;
		this.ville = ville;
		this.adresse = adresse;
	}

	public Integer getIdUtilisateur() {
		return this.idUtilisateur;
	}

	public void setIdUtilisateur(Integer idUtilisateur) {
		this.idUtilisateur = idUtilisateur;
	}

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return this.prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getMdp() {
		return this.mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String getDateDn() {
		return this.dateDn;
	}

	public void setDateDn(String dateDn) {
		this.dateDn = dateDn;
	}

	public String getPays() {
		return this.pays;
	}

	public void setPays(String pays) {
		this.pays = pays;
	}

	public Integer getCodePostal() {
		return this.codePostal;
	}

	public void setCodePostal(Integer codePostal) {
		this.codePostal = codePostal;
	}

	public String getVille() {
		return this.ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getAdresse() {
		return this.adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

}
