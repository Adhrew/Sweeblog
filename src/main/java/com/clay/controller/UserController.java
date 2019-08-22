package com.clay.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.annotation.Resource;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.QuerySendDetailsResponse;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsRequest;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
import com.clay.entity.Blog;
import com.clay.entity.User;
import com.clay.service.UserService;
import com.clay.service.impl.BlogServiceImpl;
import com.clay.tools.Constants;

@Controller
public class UserController {

	@Resource
	private UserService userService;

	/** 默锟较斤拷锟斤拷锟铰硷拷锟酵� */
	@RequestMapping("/index.html")
	public String index(HttpSession session, HttpServletRequest request) {
		if(session.getAttribute(Constants.USER_SESSION)!=null){
			return "home/index";
		}else{
			return "index";
		}
	}
	
	@RequestMapping("/blog.html")
	public String blog(HttpSession session, HttpServletRequest request) {
		return "blog";
	}
	
	@RequestMapping("/login.html")
	public String login(HttpSession session, HttpServletRequest request) {
		return "index";
	}
	
	@RequestMapping("/register.html")
	public String register(HttpSession session, HttpServletRequest request,HttpServletResponse response) throws Exception {
//		String name = request.getParameter("username");
//		//String pwd = request.getParameter("pwd");
//		//String pwd2 = request.getParameter("confirmpwd");
//		String code = request.getParameter("identifyingcode");
//		String phone = request.getParameter("phone");
//	    System.out.println(name+","+phone);
//	    SendSmsResponse response1 = sendSms(phone);
//		session = request.getSession();
//		session.setAttribute("yy",UserController.random);
//		request.setAttribute("username",name);
//		request.setAttribute("phone",phone);
//		request.setAttribute("username",name);
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
	

	/** 锟斤拷录锟斤拷锟斤拷锟斤拷 */
	@RequestMapping("/login.action")
	public String login(@RequestParam("username") String user_name, @RequestParam("password") String user_pwd,
			HttpSession session, HttpServletRequest request) {
		User user = userService.userLogin(user_name, user_pwd);
		if(user!=null){
			//锟斤拷锟斤拷锟铰斤拷晒锟�,锟斤拷锟斤拷锟斤拷页锟斤拷
			session.setAttribute(Constants.USER_SESSION, user);
			return "redirect:/index.html";
			
		}else{
			//锟斤拷锟斤拷锟斤拷锟绞э拷埽锟斤拷锟斤拷氐锟铰揭筹拷锟斤拷锟斤拷锟斤拷示
			session.setAttribute(Constants.SYS_MESSAGE, -1);
			return "redirect:/login.html";
		}
	}

}
