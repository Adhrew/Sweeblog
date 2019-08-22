package com.clay.pojo;

public class RecordVo {
	//订单状态
	private Integer status;//根据订单状态查询
	private Integer ok;//根据确认状态查询
	private Integer user_id;//根据客户ID查询
	private Integer blog_id;//根据博客ID查询
	private Integer blog_user_id;//根据博主ID查询
	
	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public Integer getBlog_id() {
		return blog_id;
	}

	public void setBlog_id(Integer blog_id) {
		this.blog_id = blog_id;
	}

	public Integer getBlog_user_id() {
		return blog_user_id;
	}

	public void setBlog_user_id(Integer blog_user_id) {
		this.blog_user_id = blog_user_id;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getOk() {
		return ok;
	}

	public void setOk(Integer ok) {
		this.ok = ok;
	}
	
}
