package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Record;

public interface RecordDao {
	List<Record> queryByPage(RowBounds rb);
	List<Record> queryByPageAndUserId(int id, RowBounds rb);
	List<Record> queryByPageAndBlogId(int id, RowBounds rb);
	List<Record> queryByPageAndBlogUserId(int id, RowBounds rb);
	Record queryById(int id);
	int getCount();
	int getCountByUserId(int id);
	int getCountByBlogId(int id);
	int getCountByBlogUserId(int id);
	boolean insertRecord(Record record);
	boolean deleteRecord(int id);
	boolean updateRecord(Record record);
}
