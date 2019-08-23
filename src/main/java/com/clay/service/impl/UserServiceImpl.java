package com.clay.service.impl;
import java.beans.ExceptionListener;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.clay.dao.IdentityDao;
import com.clay.dao.UserDao;
import com.clay.entity.Identity;
import com.clay.entity.User;
import com.clay.pojo.PagePojo;
import com.clay.pojo.UserVo;
import com.clay.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource
	private UserDao userDao;
	@Resource
	private IdentityDao identityDao;
	

	@Override
	public User userLogin(String user_tel, String user_pwd) {
		if(user_tel!=null && user_pwd!=null){
			return userDao.userLogin(user_tel, user_pwd);
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
	/**
	 * 实现用户认证
	 * @param id
	 * @return
	 * @throws Exception 
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean identifyUser(int id) throws Exception {
		//将用户认证标识赋值为2,已认证
		User user = userDao.queryById(id);
		user.setUser_identity(2);
		if(!userDao.updateUser(user)){
			throw new Exception();
		}
		return true;
	}
	/**
	 * 实现拒绝用户认证
	 * @param id
	 * @return
	 * @throws Exception 
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean identifyUserNot(int id) throws Exception {
		//将用户认证标识赋值为0,未认证
		User user = userDao.queryById(id);
		user.setUser_identity(0);
		if(!userDao.updateUser(user)){
			throw new Exception();
		}
		return true;
	}
	
	/**
	 * 用户发起认证
	 * @param id
	 * @return
	 * @throws Exception 
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean doIdentify(int id,Identity identity) throws Exception {
		//将用户认证标识赋值为1,认证中
		User user = userDao.queryById(id);
		user.setUser_identity(1);
		//将认证信息插入认证表中
		if(!userDao.updateUser(user)||!identityDao.insertIdentity(identity)){
			throw new Exception();
		}
		return true;
	}
	
}
