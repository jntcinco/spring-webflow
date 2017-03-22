package com.ibm.ais.service;

import java.util.List;

import com.ibm.ais.model.User;

public interface UserService {
	
	public void save(User user);
	
	public void update(User user);
	
	public void remove(Long id);
	
	public User getUserBy(Long id);
	
	public List<User> getAllUser();
}
