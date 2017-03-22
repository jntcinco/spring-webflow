package com.ibm.ais.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ibm.ais.dao.UserDao;
import com.ibm.ais.model.User;
import com.ibm.ais.service.UserService;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public void save(User user) {
		if(user != null) {
			userDao.create(user);
		}
	}
	
	public void update(User user) {
		if(user != null) {
			userDao.update(user);
		}
	}
	
	public void remove(Long id) {
		if(id != null) {
			userDao.remove(id);
		}
	}
	
	public User getUserBy(Long id) {
		return userDao.get(id);
	}
	
	public List<User> getAllUser() {
		return userDao.getAll();
	}
}
