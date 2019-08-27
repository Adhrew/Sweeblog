package com.clay.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clay.entity.Message;
import com.clay.pojo.MessageVo;
import com.clay.service.MessageService;
import com.google.gson.Gson;

@Controller
public class messageController {
    
	@Resource
	private MessageService messageService;
	
	@RequestMapping()
	public void rendMesssage(HttpServletRequest request,HttpServletResponse response, Integer accept_id) throws IOException{
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
	    PrintWriter out=response.getWriter();
		MessageVo vo=new MessageVo();	 
		vo.setAccept_id(accept_id);
		List<Message> list=messageService.queryMessage(vo);
		for(Message e:list)
		{
			System.out.println("接受人："+e.getAccept_id()+"发送人："+e.getSender_id());
			
		}
		Gson g=new Gson();
		String str=g.toJson(list);
		out.print(str);
		out.flush();
		out.close();
   	}
	
	
}
