package com.java.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.dao.PictureDao;
import com.java.entity.Picture;
import com.java.service.PictureService;

@Service
@Transactional
public class PictureServiceImpl implements PictureService{

	@Autowired 
	private PictureDao pictureDao;
	@Override
	public List<Picture> getAllPicture() {
		// TODO Auto-generated method stub
		return pictureDao.getAllPicture();
	}

	@Override
	public int InsertPicture(String name, String content) {
		// TODO Auto-generated method stub
		return pictureDao.InsertPicture(name, content);
	}

}
