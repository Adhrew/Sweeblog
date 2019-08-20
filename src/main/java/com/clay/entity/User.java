package com.clay.entity;

import java.sql.Date;

public class User {
	private Integer user_id;
	private String user_name;
	private String user_pwd;
	private String user_img;
	private String user_sex;
	private String user_tel;
	private Integer user_identity;
	private Date user_register;
	private Integer user_money;
	private Integer user_credit;
	public User(){
		
	}
	public User(Integer user_id, String user_name, String user_pwd, String user_img, String user_sex, String user_tel,
			Integer user_identity, Date user_register, Integer user_money, Integer user_credit) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.user_img = user_img;
		this.user_sex = user_sex;
		this.user_tel = user_tel;
		this.user_identity = user_identity;
		this.user_register = user_register;
		this.user_money = user_money;
		this.user_credit = user_credit;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public String getUser_img() {
		return user_img;
	}
	public void setUser_img(String user_img) {
		this.user_img = user_img;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_tel() {
		return user_tel;
	}
	public void setUser_tel(String user_tel) {
		this.user_tel = user_tel;
	}
	public Integer getUser_identity() {
		return user_identity;
	}
	public void setUser_identity(Integer user_identity) {
		this.user_identity = user_identity;
	}
	public Date getUser_register() {
		return user_register;
	}
	public void setUser_register(Date user_register) {
		this.user_register = user_register;
	}
	public Integer getUser_money() {
		return user_money;
	}
	public void setUser_money(Integer user_money) {
		this.user_money = user_money;
	}
	public Integer getUser_credit() {
		return user_credit;
	}
	public void setUser_credit(Integer user_credit) {
		this.user_credit = user_credit;
	}
	
	
}
