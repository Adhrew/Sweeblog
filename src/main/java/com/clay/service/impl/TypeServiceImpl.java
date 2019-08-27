package com.clay.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.clay.dao.TypeDao;
import com.clay.entity.Type;
import com.clay.pojo.PagePojo;
import com.clay.service.TypeService;

@Service("typeService")
public class TypeServiceImpl implements TypeService{
	
	@Resource
	private TypeDao typeDao;
	
	@Override
	public List<Type> queryAll() {
		return typeDao.queryAll();
	}

	@Override
	public PagePojo<Type> queryByPage(int page, int size) {
		if(page<=0||size<=0){
			return null;
		}
		List<Type>data = typeDao.queryByPage(new RowBounds((page-1)*size, size));
		PagePojo<Type> pp = new PagePojo<Type>();
		int count = typeDao.getCount();
		if(count%size!=0||count==0){
			count = (count/size)+1;
		}else{
			count = count/size;
		}
		pp.setCount(count);
		pp.setData(data);
		pp.setPage(page);
		pp.setSize(size);
		return pp;
	}

	@Override
	public boolean insertType(Type type) {
		return typeDao.insertType(type);
	}

	@Override
	public boolean updateType(Type type) {
		return typeDao.updateType(type);
	}

	@Override
	public boolean deleteType(int id) {
		return typeDao.deleteType(id);
	}

	@Override
	public int getCount() {
		return typeDao.getCount();
	}

	@Override
	public Type queryById(int id) {
		return typeDao.queryById(id);
	}

	@Override
	public List<Type> queryTe() {
		// TODO Auto-generated method stub
		return typeDao.queryTe();
	}

	@Override
	public Type queryTeByname(String name) {
		// TODO Auto-generated method stub
		return typeDao.queryTeByname(name);
	}
	
}
