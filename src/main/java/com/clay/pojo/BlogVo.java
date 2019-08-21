package com.clay.pojo;

public class BlogVo {
	private Integer type_id;
	private String title_str_like;
	private String text_str_like;
	private Integer user_id;
	private Integer min_hot;
	private Integer max_hot;
	private Integer status;
	
	
	
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public Integer getType_id() {
		return type_id;
	}
	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}

	public String getText_str_like() {
		return text_str_like;
	}
	public void setText_str_like(String text_str_like) {
		this.text_str_like = text_str_like;
	}
	public Integer getMin_hot() {
		return min_hot;
	}
	public void setMin_hot(Integer min_hot) {
		this.min_hot = min_hot;
	}
	public Integer getMax_hot() {
		return max_hot;
	}
	public void setMax_hot(Integer max_hot) {
		this.max_hot = max_hot;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getTitle_str_like() {
		return title_str_like;
	}
	public void setTitle_str_like(String title_str_like) {
		this.title_str_like = title_str_like;
	}
	
	
}
