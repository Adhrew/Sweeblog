package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.User;
import com.clay.pojo.UserVo;
import com.clay.pojo.UserVo2;

public interface UserDao2 {
	User userLogin(String username, String pwd);     //用户登陆验证
	List<User> queryByPage(UserVo2 uv, RowBounds rb); //根据条件查询分页
	List<User> queryAll();						     //查询所有用户
	User queryById(int id);
	int getCount(UserVo2 uv);						 //获取用户数
	boolean insertUser(User user);                   //插入用户
	boolean deleteUser(int id);						 //删除用户
	boolean updateUser(User user);					 //修改用户
}
