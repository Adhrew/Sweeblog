package com.clay.entity;

import java.util.Date;

public class Record {
	private Integer record_id;
	private Blog blog_id;
	private User user_id;
	private Integer record_status;
	private Integer record_ok;
	private String record_starttime;
	private String record_endtime;
	private Integer record_money;
	public Integer getRecord_id() {
		return record_id;
	}
	public void setRecord_id(Integer record_id) {
		this.record_id = record_id;
	}
	public Blog getBlog_id() {
		return blog_id;
	}
	public void setBlog_id(Blog blog_id) {
		this.blog_id = blog_id;
	}
	public User getUser_id() {
		return user_id;
	}
	public void setUser_id(User user_id) {
		this.user_id = user_id;
	}
	public Integer getRecord_status() {
		return record_status;
	}
	public void setRecord_status(Integer record_status) {
		this.record_status = record_status;
	}
	public Integer getRecord_ok() {
		return record_ok;
	}
	public void setRecord_ok(Integer record_ok) {
		this.record_ok = record_ok;
	}
	public String getRecord_starttime() {
		return record_starttime;
	}
	public void setRecord_starttime(String record_starttime) {
		this.record_starttime = record_starttime;
	}
	public String getRecord_endtime() {
		return record_endtime;
	}
	public void setRecord_endtime(String record_endtime) {
		this.record_endtime = record_endtime;
	}
	public Integer getRecord_money() {
		return record_money;
	}
	public void setRecord_money(Integer record_money) {
		this.record_money = record_money;
	}
	
}
