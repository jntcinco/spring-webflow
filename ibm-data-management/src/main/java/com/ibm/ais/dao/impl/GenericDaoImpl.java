package com.ibm.ais.dao.impl;

import java.io.Serializable;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityNotFoundException;
import javax.persistence.PersistenceContext;

import com.ibm.ais.dao.GenericDao;

public class GenericDaoImpl<T, PK extends Serializable> implements GenericDao<T, PK> {

	protected Class<T> persistentClass;
	
	@PersistenceContext(unitName="ibmPersitenceUnit")
	private EntityManager entityManager; 
	
	public GenericDaoImpl(Class<T> persistentClass) {
		this.persistentClass = persistentClass;
	}
	
	public void create(T object) {
		entityManager.persist(object);
	}
	
	public void update(T object) {
		entityManager.merge(object);
	}
	
	public void remove(PK id) {
		entityManager.remove(get(id));
		entityManager.flush();
	}
	
	public T get(PK id) {
		T entity = entityManager.find(persistentClass, id);
		if(entity == null) {
			String msg = persistentClass + " object with id '" + id + "' not found.";
			throw new EntityNotFoundException(msg);
		}
		return entity;
	}
	
	@SuppressWarnings( "unchecked" )
	public List<T> getAll() {
		return entityManager.createQuery( "from " + persistentClass.getName() ).getResultList();
	}
	
	public boolean exist(PK id) {
		 T entity = (T) entityManager.find( this.persistentClass, id );
	     return entity != null;
	}
}
