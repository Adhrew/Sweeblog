package com.clay.pojo;

public class IdentityVo {
	private Integer status; //0查询未认证，1查询认证中，2查询已认证 ，null查询所有
	private String identity_str_like; //模糊查询
	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getIdentity_str_like() {
		return identity_str_like;
	}

	public void setIdentity_str_like(String identity_str_like) {
		this.identity_str_like = identity_str_like;
	}
	
}
