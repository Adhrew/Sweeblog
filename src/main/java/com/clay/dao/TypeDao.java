package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Type;

public interface TypeDao {
	List<Type> queryAll();
	List<Type> queryByPage(RowBounds rb);
	Type queryById(int id);
	int getCount();
	boolean insertType(Type type);
	boolean updateType(Type type);
	boolean deleteType(int id);
    List<Type> queryTe();
    Type queryTeByname(String name);
}
