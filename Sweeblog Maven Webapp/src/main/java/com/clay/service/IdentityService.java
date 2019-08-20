package com.clay.service;
import com.clay.entity.Identity;
import com.clay.pojo.PagePojo;

public interface IdentityService {
	PagePojo<Identity> queryByPage(int page, int size);
	Identity queryByUserId(int id);
	Identity queryByIdentityId(int id);
	int getCount();
	boolean insertIdentity(Identity identity);
	boolean deleteIdentity(int id);
}
