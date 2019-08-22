package com.clay.service;
import com.clay.entity.Identity;
import com.clay.pojo.IdentityVo;
import com.clay.pojo.PagePojo;

public interface IdentityService {
	PagePojo<Identity> queryByPage(IdentityVo iv,int page, int size); //根据iv条件分页查询blog，条件内容看IdentityVo中注释详情
	Identity queryByUserId(int id);			//根据用户id查询
	Identity queryByIdentityId(int id);		//根据认证ID查询
	int getCount(IdentityVo iv);			//根据iv条件查询条数
	boolean insertIdentity(Identity identity); //增删改
	boolean deleteIdentity(int id);
	boolean updateIdentity(Identity identity);
}
 