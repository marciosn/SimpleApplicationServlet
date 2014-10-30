package br.com.ufc.es.servlets.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.criteria.CriteriaQuery;

import br.com.ufc.es.servlets.util.JPAUtil;

public abstract class GenericJPADAO<T> implements GenericDAO<T>{
	protected EntityManager em = JPAUtil.getEntityManager();
	protected Class<T> persistentClass;

	public void save(T entity) {
		em.merge(entity);
	}

	public void delete(T entity) {
		em.refresh(entity);
		em.remove(entity);
	}

	public T find(Object id) {
		return em.find(persistentClass, id);
	}
	
	public List<T> find() {
		CriteriaQuery<T> cq = em.getCriteriaBuilder().createQuery(persistentClass);
		cq.from(persistentClass);
		return em.createQuery(cq).getResultList();
	}

	public void beginTransaction() {
		em.getTransaction().begin();
	}

	public void commit() {
		em.getTransaction().commit();
	}

	public void rollback() {
		em.getTransaction().rollback();
	}

	public void close() {
		JPAUtil.closeEntityManager();
	}

}
