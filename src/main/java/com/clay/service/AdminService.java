package com.clay.service;




import com.clay.entity.Admin;
import com.clay.pojo.PagePojo;

public interface AdminService {
	Admin Login(String admin_name, String admin_pwd); //管理员登陆验证
	boolean insertAdmin(Admin admin);		//管理员增删改
	boolean deleteAdmin(int id);
	boolean updateAdmin(Admin admin);
	PagePojo<Admin> queryByPage(int page, int size);//管理员信息分页查询
	int getCount();
}
