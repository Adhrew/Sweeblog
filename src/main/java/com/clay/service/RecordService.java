package com.clay.service;
import com.clay.entity.Record;
import com.clay.pojo.PagePojo;
import com.clay.pojo.RecordVo;


public interface RecordService {
	PagePojo<Record> queryByPage(RecordVo rv,int page,int size);//条件分页查询，详情看RecordVo类
	int getCount(RecordVo rv);
	Record queryById(int id);
	boolean insertRecord(Record record);//增删改
	boolean deleteRecord(int id);
	boolean updateRecord(Record record);
	boolean dealRecord(int record_id)throws Exception;    //接受交易
	boolean dealRecordNot(int record_id)throws Exception; //拒绝交易
	boolean verifyRecordByUser(int record_id)throws Exception;//客户确认
	boolean verifyRecordByBlog(int record_id)throws Exception;//博主确认
	boolean cancelRecordByUser(int record_id)throws Exception;//客户毁约
	boolean cancelRecordByBlog(int record_id)throws Exception;//博主毁约
}
