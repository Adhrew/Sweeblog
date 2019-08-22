package com.clay.pojo;

public class IdentityVo {
	private Integer status; //0查询未认证，1查询认证中，2查询已认证 ，null查询所有

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}
	
}
