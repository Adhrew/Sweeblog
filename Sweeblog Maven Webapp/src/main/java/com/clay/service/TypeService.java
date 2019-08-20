package com.clay.service;

import java.util.List;
import com.clay.entity.Type;
import com.clay.pojo.PagePojo;

public interface TypeService {
	List<Type> queryAll();
	PagePojo<Type> queryByPage(int page, int size);
	int getCount();
	Type queryById(int id);
	boolean insertType(Type type);
	boolean updateType(Type type);
	boolean deleteType(int id);
}
