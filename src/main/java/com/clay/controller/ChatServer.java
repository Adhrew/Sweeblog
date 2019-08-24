package com.clay.controller;
import java.text.SimpleDateFormat;

import java.util.Date;

import javax.annotation.Resource;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;

import com.clay.entity.Message;
import com.clay.entity.User;
import com.clay.service.MessageService;
import com.clay.service.impl.MessageServiceImpl;

import net.sf.json.JSONObject;

/**
 * 聊天服务器类
 * @author shiyanlou
 *
 */
@ServerEndpoint("/websocket")
public class ChatServer {
	
	private static final SimpleDateFormat DATE_FORMAT = new SimpleDateFormat("yyyy-MM-dd HH:mm");	// 日期格式化

	
	@OnOpen
	public void open(Session session) {
		// 添加初始化操作
	}
	
	/**
	 * 接受客户端的消息，并把消息发送给所有连接的会话
	 * @param message 客户端发来的消息
	 * @param session 客户端的会话
	 */
	@OnMessage
	public void getMessage(String message, Session session) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("applicationContext-mybatis.xml");
		MessageService ms= (MessageService) ctx.getBean("messageService");
		System.out.println(message);
		JSONObject jsonObject = JSONObject.fromObject(message);
		jsonObject.put("date", DATE_FORMAT.format(new Date()));
		System.out.println(DATE_FORMAT.format(new Date()));
		Integer sender_id =Integer.parseInt((String)jsonObject.get("nickname"));
		System.out.println(sender_id);
		Integer accept_id =Integer.parseInt((String)jsonObject.get("who"));
		System.out.println(accept_id);
		
		
		Message m = new Message();
		
		User accept = new User();
		accept.setUser_id(accept_id);
		m.setAccept_id(accept);
		
		User sender = new User();
		sender.setUser_id(sender_id);
		m.setSender_id(sender);
		
		m.setMessage_msg((String)jsonObject.get("content"));
		System.out.println("===============插入");
		
		ms.insertMessage(m);
		
		System.out.println("===============插入成功");
		// 把消息发送给所有连接的会话
		for (Session openSession : session.getOpenSessions()) {
			// 添加本条消息是否为当前会话本身发的标志
			jsonObject.put("isSelf", openSession.equals(session));
			// 发送JSON格式的消息
			openSession.getAsyncRemote().sendText(jsonObject.toString());
		}
	}

	@OnClose
	public void close() {
		// 添加关闭会话时的操作
	}

	@OnError
	public void error(Throwable t) {
		// 添加处理错误的操作
	}
}