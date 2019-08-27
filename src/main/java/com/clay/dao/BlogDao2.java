package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Blog;
import com.clay.pojo.BlogVo;
import com.clay.pojo.BlogVo2;


public interface BlogDao2 {
	List<Blog> queryByPage(BlogVo2 bv, RowBounds rb);
	List<Blog> queryAll();				
	Blog queryById(int blog_id);		
	int getCount(BlogVo2 bv);   			
	boolean insertBlog(Blog blog);		
	boolean updateBlog(Blog blog);		
	boolean deleteBlog(int id);			
}
