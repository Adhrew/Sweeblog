package com.clay.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.clay.dao.MessageDao;
import com.clay.entity.Message;
import com.clay.pojo.MessageVo;
import com.clay.service.MessageService;

@Service("messageService")
public class MessageServiceImpl implements MessageService{

	@Resource
	private MessageDao messageDao;
	
	@Override
	public List<Message> queryMessage(MessageVo mv) {
		return messageDao.queryMessage(mv);
	}

	@Override
	public boolean insertMessage(Message m) {
		return messageDao.insertMessage(m);
	}

	@Override
	public boolean readMessage(int sender_id, int accept_id) {
		return messageDao.readMessage(sender_id, accept_id);
	}

	@Override
	public List<Message> queryMessaged(int p1, int p2) {
		return messageDao.queryMessaged(p1, p2);
	}

}
