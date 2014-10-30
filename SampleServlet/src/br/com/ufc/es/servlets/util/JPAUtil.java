package br.com.ufc.es.servlets.util;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class JPAUtil {
	private static final EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev");

	private static ThreadLocal<EntityManager> ems = new ThreadLocal<EntityManager>();

	/**
	 * Obt�m o EntityManager vinculado � Thread atual. Se ele ainda n�o
	 * existir, � criado e depois, vinculado �Thread atual.
	 */
	public static EntityManager getEntityManager() {
		EntityManager em = ems.get();
		if (em == null) {
			em = emf.createEntityManager();
			ems.set(em);
		}
		return em;
	}

	/**
	 *  Fecha o EntityManager atrelado � Thread atual e retira-o da ThreadLocal.
	 */
	public static void closeEntityManager() {
		EntityManager em = ems.get();
		if (em != null) {
			EntityTransaction tx = em.getTransaction();
			if (tx.isActive()) {
				tx.commit();
			}
			em.close();
			ems.set(null);
		}
	}

}
