package com.clay.service.impl;

import java.util.List;


import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.clay.dao.RecordDao;
import com.clay.dao.UserDao;
import com.clay.entity.Record;
import com.clay.entity.User;
import com.clay.pojo.PagePojo;
import com.clay.service.RecordService;

@Service("recordService")
public class RecordServiceImpl implements RecordService{

	@Resource
	private RecordDao recordDao;
	@Resource
	private UserDao userDao;
	
	@Override
	public Record queryById(int id) {
		return recordDao.queryById(id);
	}

	@Override
	public int getCount() {
		return recordDao.getCount();
	}

	@Override
	public int getCountByUserId(int id) {
		return recordDao.getCountByUserId(id);
	}

	@Override
	public PagePojo<Record> queryByPage(int page, int size) {
		if(page<0||size<0){
			return null;
		}
		PagePojo<Record> pp = new PagePojo<Record>();
		List<Record> data = recordDao.queryByPage( new RowBounds((page-1)*size, size));
		int count = recordDao.getCount();
		if(count%size!=0||count==0){
			count = (count/size)+1;
		}else{
			count = count/size;
		}
		pp.setCount(count);
		pp.setData(data);
		pp.setPage(page);
		pp.setSize(size);
		return pp;
	}

	@Override
	public PagePojo<Record> queryByPageAndUserId(int id, int page, int size) {
		if(page<=0||size<=0){
			return null;
		}
		PagePojo<Record> pp = new PagePojo<Record>();
		List<Record> data = recordDao.queryByPageAndUserId( id,new RowBounds((page-1)*size, size));
		int count = recordDao.getCountByUserId(id);
		if(count%size!=0||count==0){
			count = (count/size)+1;
		}else{
			count = count/size;
		}
		pp.setCount(count);
		pp.setData(data);
		pp.setPage(page);
		pp.setSize(size);
		return pp;
	}

	@Override
	public PagePojo<Record> queryByPageAndBlogId(int id, int page, int size) {
		if(page<=0||size<=0){
			return null;
		}
		PagePojo<Record> pp = new PagePojo<Record>();
		List<Record> data = recordDao.queryByPageAndBlogId( id,new RowBounds((page-1)*size, size));
		int count = recordDao.getCountByBlogId(id);
		if(count%size!=0||count==0){
			count = (count/size)+1;
		}else{
			count = count/size;
		}
		pp.setCount(count);
		pp.setData(data);
		pp.setPage(page);
		pp.setSize(size);
		return pp;
	}

	@Override
	public int getCountByBlogId(int id) {
		return recordDao.getCountByBlogId(id);
	}

	@Override
	public boolean insertRecord(Record record) {
		return recordDao.insertRecord(record);
	}

	@Override
	public boolean deleteRecord(int id) {
		return recordDao.deleteRecord(id);
	}

	@Override
	public boolean updateRecord(Record record) {
		return recordDao.updateRecord(record);
	}
	/***
	 * ʵ�ֶ�������
	 * @param user_id   ���׿ͻ�
	 * @param record_id ���׶������
	 * @throws Exception 
	 * @return{@link boolean} �����Ƿ�ɹ�
	 * @
	 */
	@Override
	//@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean dealRecord(int user_id, int record_id) throws Exception {
		//��ѯ�û����ͱ�
		User user =userDao.queryById(user_id);
		Integer user_money = user.getUser_money();
		//��ѯ�������ͱ�
		Record record = recordDao.queryById(record_id);
		Integer record_money = record.getRecord_money();
		if(record_money > user_money){
			return false;
		}else{
			//��Ǯ
			user.setUser_money(user_money-record_money);
			//�޸Ķ���״̬  Ϊ1������ִ����
 			record.setRecord_status(1);
 			//�ύ�޸�
			if(!(recordDao.updateRecord(record)&&userDao.updateUser(user))){
				throw new Exception();
			}
			return true;
		}
	}

}
