package dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.transaction.Transactional;

@Stateless
@Transactional
public class GenericDAO<ENTIDADE> {

	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("careerplan");
	private EntityManager em = emf.createEntityManager();
	private Class<ENTIDADE> entidade;


	@SuppressWarnings("unchecked")
	public GenericDAO() {
		if (entidade == null) {
			Type type = getClass().getGenericSuperclass();
			if (!(type instanceof ParameterizedType)) {
				type = getClass().getSuperclass().getGenericSuperclass();
			}

			ParameterizedType paramType = (ParameterizedType) type;
			entidade = (Class<ENTIDADE>) paramType.getActualTypeArguments()[0];
		}
	}

	public ENTIDADE insere(ENTIDADE entidade) throws PersistenceException {
		try {
			em.getTransaction().begin();
			em.persist(entidade);
			em.getTransaction().commit();
		} catch (PersistenceException pe) {
			String msg = "Erro ao inserir " + entidade + " no banco de dados.";
			throw new PersistenceException(msg, pe);
		}
		return entidade;
	}

	public ENTIDADE findById(Serializable id) {
		ENTIDADE instancia = em.find(getEntityClass(), id);
		return instancia;
	}

	protected Class<ENTIDADE> getEntityClass() {
		return entidade;
	}

	public ENTIDADE update(ENTIDADE entidade) throws Exception {
		ENTIDADE ent = null;
		try {
			em.getTransaction().begin();
			ent = em.merge(entidade);
			em.getTransaction().commit();
		} catch (PersistenceException e) {
			String msg = "Erro ao atualizar " + entidade + " no banco de dados";
			System.out.println(msg);
		}
		return ent;
	}
}
