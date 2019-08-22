package com.clay.pojo;

public class UserVo {
	private Integer user_identity;//根据用户认证状态查询
	private String user_str_like;//模糊查询
	
	public String getUser_str_like() {
		return user_str_like;
	}
	public void setUser_str_like(String user_str_like) {
		this.user_str_like = user_str_like;
	}
	public Integer getUser_identity() {
		return user_identity;
	}
	public void setUser_identity(Integer user_id) {
		this.user_identity = user_id;
	}
	
}
