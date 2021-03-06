package com.clay.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import com.clay.dao.BlogDao;
import com.clay.dao.RecordDao;
import com.clay.dao.RecordDao2;
import com.clay.dao.UserDao;
import com.clay.entity.Blog;
import com.clay.entity.Record;
import com.clay.entity.User;
import com.clay.pojo.PagePojo;
import com.clay.pojo.RecordVo;
import com.clay.pojo.RecordVo2;
import com.clay.service.RecordService2;
import com.clay.tools.Constants;

@Service("recordService2")
public class RecordServiceImpl2 implements RecordService2{

	@Resource
	private RecordDao recordDao;
	@Resource
	private RecordDao2 recordDao2;
	@Resource
	private UserDao userDao;
	@Resource
	private BlogDao blogDao;
	
	@Override
	public Record queryById(int id) {
		return recordDao.queryById(id);
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
	 * 客户接受交易
	 * @param record_id  
	 * @throws Exception 
	 * @return{@link boolean}
	 * @
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean dealRecord(int record_id) throws Exception {
		Record record = recordDao.queryById(record_id);
		User user =record.getUser_id();
		Integer user_money = user.getUser_money();
		Integer record_money = record.getRecord_money();
		if(record_money > user_money){
			return false;
		}else{
			user.setUser_money(user_money-record_money);
 			record.setRecord_status(1);
 			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 			record.setRecord_starttime(df.format(new Date()));
			if(!(recordDao.updateRecord(record)&&userDao.updateUser(user))){
				throw new Exception();
			}
			return true;
		}
	}
	/***
	 * 客户拒绝订单
	 * @param record_id 订单ID
	 * @return link{boolean} 用户是否拒绝成功
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean dealRecordNot(int record_id) throws Exception {
		Record record = recordDao.queryById(record_id);
		record.setRecord_status(-1);
		if(!recordDao.updateRecord(record)){
			throw new Exception();
		}
		return false;
	}
	
	/***
	 * 客户确认
	 * @param record_id 订单编号
	 * @return link{boolean} 客户是否确认成功
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean verifyRecordByUser(int record_id) throws Exception {
		Record record = recordDao.queryById(record_id);
		if(record.getRecord_ok() == 2){
			record.setRecord_ok(3);
			record.setRecord_status(2);
			DateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			record.setRecord_endtime(df.format(new Date()));
			int money = (int) (record.getRecord_money()*Constants.RATE);
			User user = record.getBlog_id().getUser_id();
			user.setUser_money(user.getUser_money()+ money);
			user.setUser_credit((int)(user.getUser_credit()+money*Constants.CREDT));
			Blog blog = record.getBlog_id();
			blog.setBlog_hot(blog.getBlog_hot()+Constants.DEAL_RECORD_HOT);
			if(!userDao.updateUser(user)||!recordDao.updateRecord(record)||!blogDao.updateBlog(blog)){
				throw new Exception();
			}
			return true;
		}
		if(record.getRecord_ok() == 0){
			record.setRecord_ok(1);
			if(!recordDao.updateRecord(record)){
				throw new Exception();
			}
			return true;
		}
		return false;
	}

	/***
	 * 博主确认
	 * @param record_id 订单编号
	 * @return link{boolean} 确认是否成功
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean verifyRecordByBlog(int record_id) throws Exception {
		Record record = recordDao.queryById(record_id);
		if(record.getRecord_ok() == 1){
			record.setRecord_ok(3);
			record.setRecord_status(2);
			int money = (int) (record.getRecord_money()*Constants.RATE);
			User user = record.getBlog_id().getUser_id();
			user.setUser_money(user.getUser_money()+ money);
			user.setUser_credit((int)(user.getUser_credit()+money*(Constants.CREDT+1)));
			Blog blog = record.getBlog_id();
			blog.setBlog_hot(blog.getBlog_hot()+Constants.DEAL_RECORD_HOT);
			if(!userDao.updateUser(user)||!recordDao.updateRecord(record)||!blogDao.updateBlog(blog)){
				throw new Exception();
			}
			return true;
		}
		if(record.getRecord_ok() == 0){
			record.setRecord_ok(2);
			if(!recordDao.updateRecord(record)){
				throw new Exception();
			}
			return true;
		}
		return false;
	}

	/***
	 * 用户毁约
	 * @param record_id 订单编号
	 * @return link{boolean} 是否毁约成功
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean cancelRecordByUser(int record_id) throws Exception {
		Record record = recordDao.queryById(record_id);
		record.setRecord_status(3);
		int money = (int)(record.getRecord_money()*Constants.BAD);
		User user = record.getUser_id();
		user.setUser_money(user.getUser_money()+ money);
		User blog = record.getBlog_id().getUser_id();
		blog.setUser_money(blog.getUser_money() + (int)(money * Constants.RATE));
		if(!recordDao.updateRecord(record)||!userDao.updateUser(user)||!userDao.updateUser(blog)){
			throw new Exception();
			
		}else{
			return  true;
		}
	}

	/***
	 * 博主毁约
	 * @param record_id 订单编号
	 * @return link{boolean} 是否毁约成功
	 */
	@Override
	@Transactional(isolation=Isolation.SERIALIZABLE, rollbackFor=Exception.class)
	public boolean cancelRecordByBlog(int record_id) throws Exception {
		Record record = recordDao.queryById(record_id);
		record.setRecord_status(4);
		int money = (int)(record.getRecord_money()*Constants.BAD);
		int credit = (int)(record.getRecord_money()*Constants.CREDT);
		int user_money = (int)((1+Constants.BAD)*record.getRecord_money());
		User blog = record.getBlog_id().getUser_id();
		blog.setUser_money(blog.getUser_money()- money);
		blog.setUser_credit(blog.getUser_credit()- credit);
		User user = record.getUser_id();
		user.setUser_money(user.getUser_money()+ user_money);
		if(!recordDao.updateRecord(record)||!userDao.updateUser(user)||!userDao.updateUser(blog)){
			throw new Exception();
			
		}else{
			return  true;
		}
	}

	@Override
	public PagePojo<Record> queryByPage(RecordVo2 rv, int page, int size) {
		if(page<0||size<0){
			return null;
		}
		PagePojo<Record> pp = new PagePojo<Record>();
		List<Record> data = recordDao2.queryByPage(rv, new RowBounds((page-1)*size, size));
		int count = recordDao2.getCount(rv);
		
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
	public int getCount(RecordVo2 rv) {
		return recordDao2.getCount(rv);
	}

	
}
