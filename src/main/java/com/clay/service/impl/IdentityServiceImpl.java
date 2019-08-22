package com.clay.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.clay.dao.IdentityDao;
import com.clay.entity.Identity;
import com.clay.pojo.IdentityVo;
import com.clay.pojo.PagePojo;
import com.clay.service.IdentityService;

@Service("identityService")
public class IdentityServiceImpl implements IdentityService{

	@Resource
	private IdentityDao identityDao;
	
	@Override
	public PagePojo<Identity> queryByPage(Integer status,int page, int size) {
		if(page<0||size<0){
			return null;
		}
		PagePojo<Identity> pp = new PagePojo<Identity>();
		IdentityVo iv = new IdentityVo();
		iv.setStatus(status);
		List<Identity> data = identityDao.queryByPage(iv, new RowBounds((page-1)*size, size));
		int count = identityDao.getCount();
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
	public Identity queryByUserId(int id) {
		return identityDao.queryByUserId(id);
	}

	@Override
	public Identity queryByIdentityId(int id) {
		return identityDao.queryByIdentityId(id);
	}

	@Override
	public int getCount() {
		return identityDao.getCount();
	}

	@Override
	public boolean insertIdentity(Identity identity) {
		return identityDao.insertIdentity(identity);
	}

	@Override
	public boolean deleteIdentity(int id) {
		return identityDao.deleteIdentity(id);
	}
	
}
