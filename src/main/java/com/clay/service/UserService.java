package com.clay.service;

import java.util.List;


import com.clay.entity.User;
import com.clay.pojo.PagePojo;
import com.clay.pojo.UserVo;



public interface UserService {
	User userLogin(String user_name, String user_pwd);
	User queryById(int id);
	boolean inserUser(User user);
	PagePojo<User> queryByPage(UserVo uv, int page,int size);
	List<User> queryAll();
	int getCount(UserVo uv);
	boolean deleteUser(int id);	
	boolean updateUser(User user);	
}
