package com.java.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.java.entity.Picture;

public interface PictureDao {

	public List<Picture> getAllPicture();
	
	public int InsertPicture(@Param("picName") String picName,@Param("content") String content);
}
