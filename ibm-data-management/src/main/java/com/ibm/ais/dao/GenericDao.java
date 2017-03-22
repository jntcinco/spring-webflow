package com.ibm.ais.dao;

import java.io.Serializable;
import java.util.List;

public interface GenericDao<T, PK extends Serializable> {

	public void create(T object);
	
	public void update(T object);
	
	public void remove(PK id);
	
	public T get(PK id);
	
	public List<T> getAll();
	
	public boolean exist(PK id);
}
