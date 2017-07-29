package com.java.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.dao.UserDao;
import com.java.entity.User;
import com.java.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserDao userDao;
	@Override
	public User Login(String username, String pwd) {
		// TODO Auto-generated method stub
		return userDao.getUserByNameAndPwd(username, pwd);
	}
	@Override
	public int InsertUser(User user) {
		// TODO Auto-generated method stub
		return userDao.InsertUser(user);
	}

}
