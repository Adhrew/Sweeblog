package com.clay.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clay.entity.Message;
import com.clay.entity.User;
import com.clay.pojo.MessageVo;
import com.clay.service.MessageService;
import com.google.gson.Gson;

@Controller
public class ChatController {
	
	@Resource
	private MessageService messageService;
	@RequestMapping("/Chat.html")
	public String entryChat(HttpSession session,String user_id,String sender_id){
		System.out.println("yuhaonan");
		User user = new User();
		User sender = new User();
		if(user_id!=null&&sender_id!=null){
			user.setUser_id(Integer.parseInt(user_id));
			sender.setUser_id(Integer.parseInt(sender_id));
		}
		session.setAttribute("user", user);
		session.setAttribute("sender", sender);
		return "testChat";
	}
	
	@RequestMapping("/test.html")
	public String entryTest(){
		return "testMessage";
	}
	@RequestMapping("/readMessage.action")
	public String readMessage(String sender_id,String  accept_id){
		int send = Integer.parseInt(sender_id);
		int accept = Integer.parseInt(accept_id);
		messageService.readMessage(send, accept);
		return "";
	}
	@RequestMapping("/readUMessage.action")
	public void readUMessage(HttpServletRequest request,HttpServletResponse response,String sender_id,String  accept_id) throws IOException{
		int send = Integer.parseInt(sender_id);
		int accept = Integer.parseInt(accept_id);
		PrintWriter out=response.getWriter();		
		MessageVo vo = new MessageVo();
		vo.setAccept_id(accept);
		vo.setSender_id(send);
		List<Message> data = messageService.queryMessage(vo);
		Gson g=new Gson();
	    String str=g.toJson(data);
	    out.print(str);
	    out.flush();
	    out.close();
	}
	
	@RequestMapping("/readUMessaged.action")
	public void readUMessaged(HttpServletRequest request,HttpServletResponse response,String sender_id,String  accept_id) throws IOException{
		int send = Integer.parseInt(sender_id);
		int accept = Integer.parseInt(accept_id);
		PrintWriter out=response.getWriter();		
		MessageVo vo = new MessageVo();
		vo.setAccept_id(accept);
		vo.setSender_id(send);
		List<Message> data = messageService.queryMessaged(send, accept);
		Gson g=new Gson();
	    String str=g.toJson(data);
	    out.print(str);
	    out.flush();
	    out.close();
	}
	
	@RequestMapping("/haveMessage.action")
	public void haveMessage(HttpServletRequest request,HttpServletResponse response,String accept_id) throws IOException{
		int accept = Integer.parseInt(accept_id);
		PrintWriter out=response.getWriter();		
		MessageVo vo = new MessageVo();
		vo.setAccept_id(accept);
		List<Message> data = messageService.queryMessage(vo);
	    out.print(data.size());
	    out.flush();
	    out.close();
	}
}
