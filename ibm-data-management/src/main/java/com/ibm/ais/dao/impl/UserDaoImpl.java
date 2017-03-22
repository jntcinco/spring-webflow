package com.ibm.ais.dao.impl;

import org.springframework.stereotype.Repository;

import com.ibm.ais.dao.UserDao;
import com.ibm.ais.model.User;

@Repository("userDao")
public class UserDaoImpl extends GenericDaoImpl<User, Long> implements UserDao  {

	public UserDaoImpl() {
		super(User.class);
	}
}
