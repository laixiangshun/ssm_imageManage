package com.java.dao;

import org.apache.ibatis.annotations.Param;

import com.java.entity.User;

public interface UserDao {

	public User getUserByNameAndPwd(@Param("username") String username,@Param("pwd") String pwd);
	
	public int InsertUser(User user);
}
