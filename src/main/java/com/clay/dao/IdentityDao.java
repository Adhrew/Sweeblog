package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Identity;
import com.clay.pojo.IdentityVo;

public interface IdentityDao {
	List<Identity> queryByPage(IdentityVo identity, RowBounds rb);
	Identity queryByUserId(int id);
	Identity queryByIdentityId(int id);
	int getCount();
	boolean insertIdentity(Identity identity);
	boolean deleteIdentity(int id);
}
