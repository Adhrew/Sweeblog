package com.clay.entity;

import java.sql.Date;

public class Identity {
	private Integer identity_id;
	private String identity_idcard;
	private Date identity_time;
	private String identity_name;
	private String identity_img;
	private User user_id;
	public Integer getIdentity_id() {
		return identity_id;
	}
	public void setIdentity_id(Integer identity_id) {
		this.identity_id = identity_id;
	}
	public String getIdentity_idcard() {
		return identity_idcard;
	}
	public void setIdentity_idcard(String identity_idcard) {
		this.identity_idcard = identity_idcard;
	}
	public Date getIdentity_time() {
		return identity_time;
	}
	public void setIdentity_time(Date identity_time) {
		this.identity_time = identity_time;
	}
	public String getIdentity_name() {
		return identity_name;
	}
	public void setIdentity_name(String identity_name) {
		this.identity_name = identity_name;
	}
	public String getIdentity_img() {
		return identity_img;
	}
	public void setIdentity_img(String identity_img) {
		this.identity_img = identity_img;
	}
	public User getUser_id() {
		return user_id;
	}
	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	
}
