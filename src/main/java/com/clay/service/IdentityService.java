package com.clay.service;
import com.clay.entity.Identity;
import com.clay.pojo.PagePojo;

public interface IdentityService {
	PagePojo<Identity> queryByPage(Integer status,int page, int size);  //0查询未认证，1查询认证中，2查询已认证 ，null查询所有
	Identity queryByUserId(int id);
	Identity queryByIdentityId(int id);
	int getCount();
	boolean insertIdentity(Identity identity);
	boolean deleteIdentity(int id);
}
