package com.clay.service;

import java.util.List;

import com.clay.entity.Identity;
import com.clay.entity.User;
import com.clay.pojo.PagePojo;
import com.clay.pojo.UserVo;



public interface UserService {
	User userLogin(String user_tel, String user_pwd);//登陆验证
	User queryById(int id); //根据userid查询
	boolean inserUser(User user);//插入user
	PagePojo<User> queryByPage(UserVo uv, int page,int size);//根据UserVo条件分页查询，详情看UserVo注释
	List<User> queryAll();
	int getCount(UserVo uv);
	boolean deleteUser(int id);	
	boolean updateUser(User user);
	//事务
	boolean identifyUser(int id)throws Exception; //通过认证
	boolean identifyUserNot(int id) throws Exception;//拒绝认证
	boolean doIdentify(int id,Identity identity) throws Exception;//发起认证
}
