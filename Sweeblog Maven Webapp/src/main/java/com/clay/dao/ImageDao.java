package com.clay.dao;

import java.util.List;
import com.clay.entity.Image;

public interface ImageDao {
	//����ͼƬ
	boolean insertImage(Image image);
	//�鿴ͼƬ
	List<Image> getImageByBlogId(int id);
	//ɾ��ͼƬ
	boolean deleteImageByBlogId(int id);
}
