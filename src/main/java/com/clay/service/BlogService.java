package com.clay.service;

import java.util.List;




import com.clay.entity.Blog;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;

public interface BlogService {
	PagePojo<Blog> queryByPage(BlogVo bv, int page,int size);
	List<Blog> queryAll();				
	Blog queryById(int blog_id);		
	int getCount(BlogVo bv);
	boolean insertBlog(Blog blog);	
	boolean updateBlog(Blog blog);		
	boolean deleteBlog(int id);		
	boolean writeBlog(Blog blog)throws Exception;
	
	
}
