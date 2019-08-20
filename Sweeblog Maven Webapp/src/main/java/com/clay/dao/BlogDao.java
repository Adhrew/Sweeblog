package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Blog;
import com.clay.pojo.BlogVo;


public interface BlogDao {
	List<Blog> queryByPage(BlogVo bv, RowBounds rb);//博客分页查询
	List<Blog> queryAll();				//查询所有博客
	Blog queryById(int blog_id);		//根据博客Id查询博客
	int getCount(BlogVo bv);   			//根据条件查询总条数
	boolean insertBlog(Blog blog);		//新增博客
	boolean updateBlog(Blog blog);		//修改博客
	boolean deleteBlog(int id);			//删除博客
}
