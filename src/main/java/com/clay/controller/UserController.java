package com.clay.controller;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.clay.entity.Blog;
import com.clay.entity.User;
import com.clay.service.UserService;
import com.clay.service.impl.BlogServiceImpl;
import com.clay.tools.Constants;

@Controller
public class UserController {

	@Resource
	private UserService userService;

	/** Ĭ�Ͻ����¼��ͼ */
	@RequestMapping("/index.html")
	public String index(HttpSession session, HttpServletRequest request) {
		if(session.getAttribute(Constants.USER_SESSION)!=null){
			return "home/index";
		}else{
			return "login";
		}
	}
	
	@RequestMapping("/blog.html")
	public String blog(HttpSession session, HttpServletRequest request) {
		return "blog";
	}
	
	@RequestMapping("/login.html")
	public String login(HttpSession session, HttpServletRequest request) {
		return "login";
	}
	
	@RequestMapping("/register.html")
	public String register(HttpSession session, HttpServletRequest request) {
		return "register";
	}
	
	
	@RequestMapping("/register.action")
	public String register(User user,HttpSession session, HttpServletRequest request) {
		if(userService.inserUser(user)){
			session.setAttribute(Constants.SYS_MESSAGE, 200);
			return "redirect:/login.html";
		}else{
			session.setAttribute(Constants.SYS_MESSAGE, -1);
			return "redirect:/register.html";
		}
		
	}
	

	/** ��¼������ */
	@RequestMapping("/login.action")
	public String login(@RequestParam("username") String user_name, @RequestParam("password") String user_pwd,
			HttpSession session, HttpServletRequest request) {
		User user = userService.userLogin(user_name, user_pwd);
		if(user!=null){
			//�����½�ɹ�,������ҳ��
			session.setAttribute(Constants.USER_SESSION, user);
			return "redirect:/index.html";
			
		}else{
			//�������ʧ�ܣ����ص�½ҳ�������ʾ
			session.setAttribute(Constants.SYS_MESSAGE, -1);
			return "redirect:/login.html";
		}
	}

}
