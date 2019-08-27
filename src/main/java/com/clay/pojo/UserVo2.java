package com.clay.pojo;

public class UserVo2 {
	private Integer user_identity;//根据用户认证状态查询
	private String user_str_like;//模糊查询
	private String starting_time; // 开始时间
	private String ending_time; // 结束时间
	
	
	public String getStarting_time() {
		return starting_time;
	}
	public void setStarting_time(String starting_time) {
		this.starting_time = starting_time;
	}
	public String getEnding_time() {
		return ending_time;
	}
	public void setEnding_time(String ending_time) {
		this.ending_time = ending_time;
	}
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
