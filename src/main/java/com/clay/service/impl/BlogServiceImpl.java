package com.clay.service.impl;

import java.util.List;



import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.clay.dao.BlogDao;
import com.clay.dao.UserDao;
import com.clay.entity.Blog;
import com.clay.entity.User;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;
import com.clay.service.BlogService;
import com.clay.tools.Constants;

@Service("blogService")
public class BlogServiceImpl implements BlogService{
	
	@Resource
	private BlogDao blogDao;
	@Resource
	private UserDao userDao;

	@Override
	public PagePojo<Blog> queryByPage(BlogVo bv, int page,int size) {
		if(page<0||size<0){
			return null;
		}
		PagePojo<Blog> pp = new PagePojo<Blog>();
		List<Blog> data = blogDao.queryByPage(bv, new RowBounds((page-1)*size, size));
		int count = blogDao.getCount(bv);
		if(count%size!=0||count==0){
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
	public List<Blog> queryAll() {
		return blogDao.queryAll();
	}

	@Override
	public Blog queryById(int blog_id) {
		return blogDao.queryById(blog_id);
	}

	@Override
	public int getCount(BlogVo bv) {
		return blogDao.getCount(bv);
	}

	@Override
	public boolean insertBlog(Blog blog) {
		return blogDao.insertBlog(blog);
	}

	@Override
	public boolean updateBlog(Blog blog) {
		return blogDao.updateBlog(blog);
	}

	@Override
	public boolean deleteBlog(int id) {
		return blogDao.deleteBlog(id);
	}

	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean writeBlog(Blog blog) throws Exception {
		//增加个人积分
		int user_id = blog.getUser_id().getUser_id();
		User user = userDao.queryById(user_id);
		user.setUser_credit(user.getUser_credit()+ (int)Constants.CREDT);
		if(!userDao.updateUser(user)||!blogDao.insertBlog(blog)){
			throw new Exception();
		}
		return true;
	}

}
