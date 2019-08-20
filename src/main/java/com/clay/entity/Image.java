package com.clay.entity;

public class Image {
	private Integer image_id;
	private String image_src;
	private Integer image_sort;
	private Blog blog_id;
	public Integer getImage_id() {
		return image_id;
	}
	public void setImage_id(Integer image_id) {
		this.image_id = image_id;
	}
	public String getImage_src() {
		return image_src;
	}
	public void setImage_src(String image_src) {
		this.image_src = image_src;
	}
	public Integer getImage_sort() {
		return image_sort;
	}
	public void setImage_sort(Integer image_sort) {
		this.image_sort = image_sort;
	}
	public Blog getBlog_id() {
		return blog_id;
	}
	public void setBlog_id(Blog blog_id) {
		this.blog_id = blog_id;
	}
	
}
