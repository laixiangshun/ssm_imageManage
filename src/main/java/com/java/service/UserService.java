package com.java.service;

import com.java.entity.User;

public interface UserService {

	public User Login(String username,String pwd);
	
	public int InsertUser(User user);
}
