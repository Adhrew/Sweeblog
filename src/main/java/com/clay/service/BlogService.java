package com.clay.service;

import java.util.List;




import com.clay.entity.Blog;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;

public interface BlogService {
	PagePojo<Blog> queryByPage(BlogVo bv, int page,int size);//博客分页查询
	List<Blog> queryAll();				//查询所有博客
	Blog queryById(int blog_id);		//根据博客Id查询博客
	int getCount(BlogVo bv);
	boolean insertBlog(Blog blog);		//新增博客
	boolean updateBlog(Blog blog);		//修改博客
	boolean deleteBlog(int id);			//删除博客
	boolean writeBlog(Blog blog)throws Exception; //发表博客加积分
	
	
}
