package com.clay.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clay.entity.Blog;
import com.clay.entity.Record;
import com.clay.entity.User;
import com.clay.pojo.PagePojo;
import com.clay.pojo.RecordVo;
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
//		for (User user : list) {
//			System.out.println(user.getUser_register());
//		}
		return user_service.queryAll();
	}
	
	/**
	 * ģ����ѯ
	 * @return
	 */
	@RequestMapping(value="/likeUser.action")
	@ResponseBody
	public List<User> getUserByLike(){
		return null;
	}
	
	/**
	 * �޸��û���Ϣ
	 * @return
	 */
	@RequestMapping(value="/updateUser.action")
	@ResponseBody
	public boolean updateUser(User user) {
//		User data = request.getParameter("data");
		boolean flag = user_service.updateUser(user);
		if (flag) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping(value="/allRecord.action")
	@ResponseBody
	public List<Record> queryAllRecord(){
		PagePojo<Record> pp = record_service.queryByPage(null, 1, 100000);
		return pp.getData();
	}
	
	@RequestMapping(value="/allBlog.action")
	@ResponseBody
	public List<Blog> queryAllBlog(){
		PagePojo<Blog> pp = blog_service.queryByPage(null, 1, 100000);
		return pp.getData();
	}
}
