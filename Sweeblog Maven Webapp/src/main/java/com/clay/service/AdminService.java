package com.clay.service;




import com.clay.entity.Admin;
import com.clay.pojo.PagePojo;

public interface AdminService {
	Admin Login(String admin_name, String admin_pwd);
	boolean insertAdmin(Admin admin);
	boolean deleteAdmin(int id);
	boolean updateAdmin(Admin admin);
	PagePojo<Admin> queryByPage(int page, int size);
	int getCount();
}
