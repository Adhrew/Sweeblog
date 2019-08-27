package com.clay.service;

import java.util.List;

import com.clay.entity.Blog;
import com.clay.pojo.BlogVo2;
import com.clay.pojo.PagePojo;

public interface BlogService2 {
	PagePojo<Blog> queryByPage(BlogVo2 bv, int page,int size); //根据bv条件分页查询blog，条件内容看BlogVo中注释详情
	List<Blog> queryAll();				//查询所有博客
	Blog queryById(int blog_id);		//根据博客id查询博客
	int getCount(BlogVo2 bv);			//根据条件查询博客数量
	boolean insertBlog(Blog blog);		//增删改
	boolean updateBlog(Blog blog);		
	boolean deleteBlog(int id)throws Exception;;		//删除博客是一个事务，删除博客同时删除相关图片和订单
	boolean writeBlog(Blog blog)throws Exception;//写博客的事务，写博客，添加博客的同时增加用户积分
	
	
}
