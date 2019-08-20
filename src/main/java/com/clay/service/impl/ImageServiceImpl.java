package com.clay.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.clay.dao.ImageDao;
import com.clay.entity.Image;
import com.clay.service.ImageService;

@Service("imageService")
public class ImageServiceImpl implements ImageService{
	
	@Resource
	private ImageDao imageDao;
	
	@Override
	public boolean insertImage(Image image) {
		return imageDao.insertImage(image);
	}

	@Override
	public List<Image> getImageByBlogId(int id) {
		return imageDao.getImageByBlogId(id);
	}

	@Override
	public boolean deleteImageByBlogId(int id) {
		return imageDao.deleteImageByBlogId(id);
	}

}
