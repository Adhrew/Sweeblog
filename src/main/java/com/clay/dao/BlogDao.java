package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Blog;
import com.clay.pojo.BlogVo;


public interface BlogDao {
	List<Blog> queryByPage(BlogVo bv, RowBounds rb);
	List<Blog> queryAll();				
	Blog queryById(int blog_id);		
	int getCount(BlogVo bv);   			
	boolean insertBlog(Blog blog);		
	boolean updateBlog(Blog blog);		
	boolean deleteBlog(int id);			
}
