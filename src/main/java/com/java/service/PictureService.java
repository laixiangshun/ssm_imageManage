package com.java.service;

import java.util.List;

import com.java.entity.Picture;

public interface PictureService {
	
	public List<Picture> getAllPicture();
	
	public int InsertPicture(String name,String content);
}
