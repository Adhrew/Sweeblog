package com.clay.service.impl;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;
import com.clay.dao.UserDao;
import com.clay.entity.User;
import com.clay.pojo.PagePojo;
import com.clay.pojo.UserVo;
import com.clay.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;
	

	@Override
	public User userLogin(String user_name, String user_pwd) {
		if(user_name!=null && user_pwd!=null){
			return userDao.userLogin(user_name, user_pwd);
		}
		return null;
	}

	@Override
	public boolean inserUser(User user) {
		return userDao.insertUser(user);
	}

	@Override
	public PagePojo<User> queryByPage(UserVo uv, int page, int size) {
		if(page<0||size<0){
			return null;
		}
		PagePojo<User> userPojo = new PagePojo<User>();
		List<User> data=userDao.queryByPage(uv, new RowBounds((page-1)*size, size));
		int count = userDao.getCount(uv);
		userPojo.setData(data);
		userPojo.setPage(page);
		userPojo.setSize(size);
		if(count%size!=0||count==0){
			count = (count/size)+1;
		}else{
			count = count / size;
		}
		userPojo.setCount(count);
		return userPojo;
	}

	@Override
	public List<User> queryAll() {
		return userDao.queryAll();
	}

	@Override
	public int getCount(UserVo uv) {
		return userDao.getCount(uv);
	}

	@Override
	public boolean deleteUser(int id) {
		return userDao.deleteUser(id);
	}

	@Override
	public boolean updateUser(User user) {
		return userDao.updateUser(user);
	}

	@Override
	public User queryById(int id) {
		return userDao.queryById(id);
	}
}
