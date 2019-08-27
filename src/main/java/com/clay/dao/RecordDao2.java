package com.clay.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import com.clay.entity.Record;
import com.clay.pojo.RecordVo;
import com.clay.pojo.RecordVo2;

public interface RecordDao2 {
	List<Record> queryByPage(RecordVo2 rv,RowBounds rb);
	Record queryById(int id);
	int getCount(RecordVo2 rv);
	boolean insertRecord(Record record);
	boolean deleteRecord(int id);
	boolean updateRecord(Record record);
}
