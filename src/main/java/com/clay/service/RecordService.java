package com.clay.service;
import com.clay.entity.Record;
import com.clay.pojo.PagePojo;


public interface RecordService {
	PagePojo<Record> queryByPage(int page,int size);
	PagePojo<Record> queryByPageAndUserId(int id,int page, int size);
	PagePojo<Record> queryByPageAndBlogId(int id,int page, int size);
	Record queryById(int id);
	int getCount();
	int getCountByUserId(int id);
	int getCountByBlogId(int id);
	boolean insertRecord(Record record);
	boolean deleteRecord(int id);
	boolean updateRecord(Record record);
	boolean dealRecord(int user_id, int record_id)throws Exception;
}
