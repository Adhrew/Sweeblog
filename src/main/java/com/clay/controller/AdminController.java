package com.clay.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clay.entity.User;
import com.clay.service.BlogService;
import com.clay.service.RecordService;
import com.clay.service.UserService;

@Controller
public class AdminController {

	@Resource(name = "blogService")
	private BlogService blog_service;
	@Resource(name = "userService")
	private UserService user_service;
	@Resource(name = "recordService")
	private RecordService record_service;

	/**
	 * ��ȡ�����������ظ�jspҳ��
	 * 
	 * @return
	 */
	@RequestMapping(value = "/blogCount.action")
	@ResponseBody
	public int getBlogCount() {
		// System.out.println(service.queryAll().size()+"��������");
		return blog_service.queryAll().size();
	}

	/**
	 * ��ȡ�û������ظ���ҳjsp
	 */
	@RequestMapping(value = "/userCount.action")
	@ResponseBody
	public int getUserCount() {
		// System.out.println("�û�����"+user_service.queryAll().size());
		return user_service.queryAll().size();
	}

	/**
	 * ��ȡ��������???
	 * 
	 */
	public void getRecordCount() {
		// return record_service
	}

	/**
	 * ��ȡ�����û�
	 */
	@RequestMapping(value = "/allUser.action")
	@ResponseBody
	public List<User> getAllUserForAjax() {
		// user_service.queryAll().forEach(System.out::println);
		List<User> list = user_service.queryAll();
		for (User user : list) {
			System.out.println(user.getUser_register());
		}
		return user_service.queryAll();
	}
}
