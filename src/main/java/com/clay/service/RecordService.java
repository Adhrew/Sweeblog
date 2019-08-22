package com.clay.service;
import com.clay.entity.Record;
import com.clay.pojo.PagePojo;


public interface RecordService {
	PagePojo<Record> queryByPage(int page,int size);
	PagePojo<Record> queryByPageAndUserId(int id,int page, int size);
	PagePojo<Record> queryByPageAndBlogId(int id,int page, int size);
	PagePojo<Record> queryByPageAndBlogUserId(int id,int page, int size);
	Record queryById(int id);
	int getCount();
	int getCountByUserId(int id);
	int getCountByBlogId(int id);
	int getCountByBlogUserId(int id);
	boolean insertRecord(Record record);
	boolean deleteRecord(int id);
	boolean updateRecord(Record record);
	boolean dealRecord(int record_id)throws Exception;    //接受交易
	boolean dealRecordNot(int record_id)throws Exception; //拒绝交易
	boolean verifyRecordByUser(int record_id)throws Exception;//客户确认
	boolean verifyRecordByBlog(int record_id)throws Exception;//博主确认
	boolean cancelRecordByUser(int record_id)throws Exception;//客户毁约
	boolean cancelRecordByBlog(int record_id)throws Exception;//博主毁约
}
