package com.clay.entity;

import java.sql.Date;
import java.util.List;

public class Blog {
	
	private Integer blog_id;
	private String blog_title;
	private String blog_text;
	private Date blog_time;
	private Integer blog_hot;
	private User user_id;
	private	Integer blog_grade;
	private Type type_id;
	private List<Image> images;
	public Integer getBlog_id() {
		return blog_id;
	}
	public void setBlog_id(Integer blog_id) {
		this.blog_id = blog_id;
	}
	public String getBlog_title() {
		return blog_title;
	}
	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}
	public String getBlog_text() {
		return blog_text;
	}
	public void setBlog_text(String blog_context) {
		this.blog_text = blog_context;
	}
	public Date getBlog_time() {
		return blog_time;
	}
	public void setBlog_time(Date blog_time) {
		this.blog_time = blog_time;
	}
	public Integer getBlog_hot() {
		return blog_hot;
	}
	public void setBlog_hot(Integer blog_hot) {
		this.blog_hot = blog_hot;
	}
	public User getUser_id() {
		return user_id;
	}
	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	public Integer getBlog_grade() {
		return blog_grade;
	}
	public void setBlog_grade(Integer blog_grade) {
		this.blog_grade = blog_grade;
	}
	public Type getType_id() {
		return type_id;
	}
	public void setType_id(Type type_id) {
		this.type_id = type_id;
	}
	public List<Image> getImages() {
		return images;
	}
	public void setImages(List<Image> images) {
		this.images = images;
	}
	

}
