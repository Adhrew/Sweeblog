package com.clay.service;

import java.util.List;

import com.clay.entity.Identity;
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
	boolean identifyUser(int id)throws Exception; //通过认证
	boolean identifyUserNot(int id) throws Exception;//拒绝认证
	boolean doIdentify(int id,Identity identity) throws Exception;//发起认证
}
