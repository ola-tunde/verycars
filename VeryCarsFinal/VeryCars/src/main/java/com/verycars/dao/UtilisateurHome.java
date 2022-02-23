package com.verycars.dao;
// Generated 19 déc. 2021 à 20:05:55 by Hibernate Tools 5.4.14.Final

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.InitialContext;
import org.hibernate.LockMode;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Example;

import com.verycars.model.Utilisateur;

/**
 * Home object for domain model class Utilisateur.
 * @see dao.Utilisateur
 * @author Hibernate Tools
 */
public class UtilisateurHome {

	private static final Logger logger = Logger.getLogger(UtilisateurHome.class.getName());

	private final SessionFactory sessionFactory = getSessionFactory();

	protected SessionFactory getSessionFactory() {
		try {
			return (SessionFactory) new InitialContext().lookup("SessionFactory");
		} catch (Exception e) {
			logger.log(Level.SEVERE, "Could not locate SessionFactory in JNDI", e);
			throw new IllegalStateException("Could not locate SessionFactory in JNDI");
		}
	}

	public void persist(Utilisateur transientInstance) {
		logger.log(Level.INFO, "persisting Utilisateur instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			logger.log(Level.INFO, "persist successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "persist failed", re);
			throw re;
		}
	}

	public void attachDirty(Utilisateur instance) {
		logger.log(Level.INFO, "attaching dirty Utilisateur instance");
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(instance);
			logger.log(Level.INFO, "attach successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "attach failed", re);
			throw re;
		}
	}

	public void attachClean(Utilisateur instance) {
		logger.log(Level.INFO, "attaching clean Utilisateur instance");
		try {
			sessionFactory.getCurrentSession().lock(instance, LockMode.NONE);
			logger.log(Level.INFO, "attach successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "attach failed", re);
			throw re;
		}
	}

	public void delete(Utilisateur persistentInstance) {
		logger.log(Level.INFO, "deleting Utilisateur instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			logger.log(Level.INFO, "delete successful");
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "delete failed", re);
			throw re;
		}
	}

	public Utilisateur merge(Utilisateur detachedInstance) {
		logger.log(Level.INFO, "merging Utilisateur instance");
		try {
			Utilisateur result = (Utilisateur) sessionFactory.getCurrentSession().merge(detachedInstance);
			logger.log(Level.INFO, "merge successful");
			return result;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "merge failed", re);
			throw re;
		}
	}

	public Utilisateur findById(java.lang.Integer id) {
		logger.log(Level.INFO, "getting Utilisateur instance with id: " + id);
		try {
			Utilisateur instance = (Utilisateur) sessionFactory.getCurrentSession().get("dao.Utilisateur", id);
			if (instance == null) {
				logger.log(Level.INFO, "get successful, no instance found");
			} else {
				logger.log(Level.INFO, "get successful, instance found");
			}
			return instance;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "get failed", re);
			throw re;
		}
	}

	public List findByExample(Utilisateur instance) {
		logger.log(Level.INFO, "finding Utilisateur instance by example");
		try {
			List results = sessionFactory.getCurrentSession().createCriteria("dao.Utilisateur")
					.add(Example.create(instance)).list();
			logger.log(Level.INFO, "find by example successful, result size: " + results.size());
			return results;
		} catch (RuntimeException re) {
			logger.log(Level.SEVERE, "find by example failed", re);
			throw re;
		}
	}
}
