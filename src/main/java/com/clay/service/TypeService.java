package com.clay.service;

import java.util.List;
import com.clay.entity.Type;
import com.clay.pojo.PagePojo;

public interface TypeService {
	List<Type> queryAll();
	PagePojo<Type> queryByPage(int page, int size); //分页查询
	int getCount();
	Type queryById(int id);      
	boolean insertType(Type type);//增删改
	boolean updateType(Type type);
	boolean deleteType(int id);
	List<Type> queryTe();  //查询不是需求的标签
	Type queryTeByname(String name);  //根据标签名找标签
}
