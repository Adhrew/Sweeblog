package com.clay.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;

import com.clay.dao.AdminDao;
import com.clay.entity.Admin;
import com.clay.pojo.PagePojo;
import com.clay.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Resource
	private AdminDao adminDao;
	
	@Override
	public Admin Login(String admin_name, String admin_pwd) {
		if(admin_name==null||admin_pwd==null){
			return null;
		}
		return adminDao.Login(admin_name, admin_pwd);
	}

	@Override
	public boolean insertAdmin(Admin admin) {
		return adminDao.insertAdmin(admin);
	}

	@Override
	public boolean deleteAdmin(int id) {
		return adminDao.deleteAdmin(id);
	}

	@Override
	public boolean updateAdmin(Admin admin) {
		return adminDao.updateAdmin(admin);
	}

	@Override
	public PagePojo<Admin> queryByPage(int page, int size) {
		if(page<=0||size<=0){
			return null;
		}
		List<Admin> data = adminDao.queryByPage(new RowBounds((page-1)*size, size));
		PagePojo<Admin> pp = new PagePojo<Admin>();
		int count = adminDao.getCount();
		if(count%size!=0 || count==0){
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
	public int getCount() {
		return adminDao.getCount();
	}

		
}
