package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Identity;

public interface IdentityDao {
	List<Identity> queryByPage(RowBounds rb);
	Identity queryByUserId(int id);
	Identity queryByIdentityId(int id);
	int getCount();
	boolean insertIdentity(Identity identity);
	boolean deleteIdentity(int id);
}
