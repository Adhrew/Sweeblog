package com.clay.service;

import java.util.List;

import com.clay.entity.Image;

public interface ImageService {
	boolean insertImage(Image image);//插入图片
	List<Image> getImageByBlogId(int id);//获取博客图片
	boolean deleteImageByBlogId(int id);//删除整个博客图片
}
