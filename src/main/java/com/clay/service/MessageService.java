package com.clay.service;

import java.util.List;

import com.clay.entity.Message;
import com.clay.pojo.MessageVo;

public interface MessageService {
	List<Message> queryMessage(MessageVo mv);//根据用户ID查询未读信息
	List<Message> queryMessaged(int p1, int p2);//根据用户ID查询已读信息
	boolean insertMessage(Message m);
	boolean readMessage(int sender_id, int accept_id); //已读
}
