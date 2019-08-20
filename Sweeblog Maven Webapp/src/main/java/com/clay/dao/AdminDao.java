package com.clay.dao;

import java.util.List;
import org.apache.ibatis.session.RowBounds;
import com.clay.entity.Admin;

public interface AdminDao {
	Admin Login(String admin_name, String admin_pwd);
	boolean insertAdmin(Admin admin);
	boolean deleteAdmin(int id);
	boolean updateAdmin(Admin admin);
	List<Admin> queryByPage(RowBounds rb);
	int getCount();
}
