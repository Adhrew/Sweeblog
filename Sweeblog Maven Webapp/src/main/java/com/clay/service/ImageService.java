package com.clay.service;

import java.util.List;

import com.clay.entity.Image;

public interface ImageService {
	//±£´æÍ¼Æ¬
	boolean insertImage(Image image);
	//²é¿´Í¼Æ¬
	List<Image> getImageByBlogId(int id);
	//É¾³ýÍ¼Æ¬
	boolean deleteImageByBlogId(int id);
}
