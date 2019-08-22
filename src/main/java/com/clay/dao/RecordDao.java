package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Record;
import com.clay.pojo.RecordVo;

public interface RecordDao {
	List<Record> queryByPage(RecordVo rv,RowBounds rb);
	Record queryById(int id);
	int getCount(RecordVo rv);
	boolean insertRecord(Record record);
	boolean deleteRecord(int id);
	boolean updateRecord(Record record);
}
