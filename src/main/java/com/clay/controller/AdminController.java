package com.clay.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.clay.entity.Blog;
import com.clay.entity.Record;
import com.clay.entity.Type;
import com.clay.entity.User;
import com.clay.pojo.BlogVo2;
import com.clay.pojo.PagePojo;
import com.clay.pojo.RecordVo2;
import com.clay.pojo.UserVo2;
import com.clay.service.BlogService;
import com.clay.service.BlogService2;
import com.clay.service.RecordService;
import com.clay.service.RecordService2;
import com.clay.service.TypeService;
import com.clay.service.UserService;
import com.clay.service.UserService2;

@Controller
public class AdminController {

	@Resource(name = "blogService")
	private BlogService blog_service;
	@Resource(name = "blogService2")
	private BlogService2 blog_service2;
	@Resource(name = "userService")
	private UserService user_service;
	@Resource(name = "userService2")
	private UserService2 user_service2;
	@Resource(name = "recordService")
	private RecordService record_service;
	@Resource(name = "recordService2")
	private RecordService2 record_service2;
	@Resource(name = "typeService")
	private TypeService type_service;

	/**
	 * 获取博客数量返回给jsp页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/blogCount.action")
	@ResponseBody
	public int getBlogCount() {
		// System.out.println(service.queryAll().size()+"博客数量");
		return blog_service.queryAll().size();
	}

	@RequestMapping(value="/checklogin.action")
	public String checkLoginUser(String username, String password, HttpServletRequest request) {
		if (username.equals("admin")&&password.equals("123")) {
			request.getSession().setAttribute("sysusername", username);
			return "redirect:/sys/index.html";
		}
		return "redirect:/sys/login.html";
	}
	/**
	 * 获取用户数返回给首页jsp
	 */
	@RequestMapping(value = "/userCount.action")
	@ResponseBody
	public int getUserCount() {
		// System.out.println("用户数量"+user_service.queryAll().size());
		return user_service.queryAll().size();
	}

	/**
	 * 获取顶单数量???
	 * 
	 */
	public void getRecordCount() {
		// return record_service
	}

	/**
	 * 获取所有用户
	 */
	@RequestMapping(value = "/allUser.action")
	@ResponseBody
	public List<User> getAllUserForAjax() {
		// user_service.queryAll().forEach(System.out::println);
		List<User> list = user_service.queryAll();
		// for (User user : list) {
		// System.out.println(user.getUser_register());
		// }
		return user_service.queryAll();
	}

	/**
	 * 模糊查询
	 * 
	 * @return
	 */
	@RequestMapping(value = "/likeUser.action")
	@ResponseBody
	public List<User> getUserByLike(String keyword, String starttime, String endtime) {
		// System.out.println("ajax传进来的值：" + keyword);
		// System.out.println("时间"+starttime+" "+endtime);
		// UserVo uv = new UserVo();
		// uv.setUser_str_like(keyword);
		UserVo2 uVo2 = new UserVo2();
		if (starttime != null) {
			uVo2.setStarting_time(starttime);
		}
		if (endtime != null) {
			uVo2.setEnding_time(endtime);
		}
		uVo2.setUser_str_like(keyword);
		PagePojo<User> pp = user_service2.queryByPage(uVo2, 1, 1000000);
		if (pp.getData().size() > 0) {
			return pp.getData();
		} else {
			return null;
		}
	}

	/**
	 * 修改用户信息
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateUser.action")
	@ResponseBody
	public boolean updateUser(User user) {
		// User data = request.getParameter("data");
		System.out.println("*******************************************");
		System.out.println(user.getUser_money());
		System.out.println(user.getUser_id());
		if (user.getUser_money() == null) {
			return false;
		}
		// System.out.println("*******************************************");
		// System.out.println(user.getUser_money());
		// System.out.println(user.getUser_id());
		if (user_service.updateUser(user)) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 删除用户
	 * 
	 * @return
	 */
	@RequestMapping(value = "/deleteUser.action")
	@ResponseBody
	public boolean deleteUser(String user_id) {
		System.out.println(user_id);
		boolean flag = user_service.deleteUser(Integer.parseInt(user_id));
		return flag;
	}

	@RequestMapping(value = "/allRecord.action")
	@ResponseBody
	public List<Record> queryAllRecord() {
		PagePojo<Record> pp = record_service.queryByPage(null, 1, 100000);
		return pp.getData();
	}

	/**
	 * 模糊查询订单
	 * 
	 * @return
	 */
	@RequestMapping(value = "/queryRecordByLike.action")
	@ResponseBody
	public List<Record> queryRecordByLike(String starttime, String endtime, String blog_id, String record_ok,
			String record_status) {
		RecordVo2 rVo2 = new RecordVo2();
		// System.out.println("时间："+starttime+" "+endtime);
		if (starttime != "") {
			System.out.println("添加了一个条件：" + starttime);
			rVo2.setStarting_time(starttime);
		}
		if (endtime != "") {
			System.out.println("添加了一个条件：" + endtime);
			rVo2.setEnding_time(endtime);
		}
		if (blog_id != "") {
			System.out.println("添加了一个条件：" + blog_id);
			rVo2.setBlog_id(Integer.parseInt(blog_id));
		}
		if (record_ok != "") {
			System.out.println("添加了一个条件：" + record_ok);
			rVo2.setOk(Integer.parseInt(record_ok));
		}
		if (record_status != "") {
			System.out.println("添加了一个条件：" + record_status);
			rVo2.setStatus(Integer.parseInt(record_status));
		}
		PagePojo<Record> pp = record_service2.queryByPage(rVo2, 1, 10000);
		List<Record> list = pp.getData();
		for (Record record : list) {
			System.out.println(record.getRecord_id());
		}
		if (pp.getData().size() > 0) {
			return pp.getData();
		} else {
			return null;
		}

	}

	@RequestMapping(value = "/allBlog.action")
	@ResponseBody
	public List<Blog> queryAllBlog() {
		PagePojo<Blog> pp = blog_service.queryByPage(null, 1, 100000);
		return pp.getData();
	}

	@RequestMapping(value = "/allType.action")
	@ResponseBody
	public List<Type> queryAllType() {
		PagePojo<Type> pp = type_service.queryByPage(1, 100000);
		return pp.getData();
	}

	@RequestMapping(value = "/delOrder.action", produces = "text/html; charset=utf-8")
	@ResponseBody
	public String delOrder(String orderid) {
		boolean flag = record_service.deleteRecord(Integer.parseInt(orderid));
		if (flag) {
			return "删除成功！";
		} else {
			return "未删除！";
		}
	}

	@RequestMapping(value = "/delCheckRecord.action")
	@ResponseBody
	public boolean delCheckRecord(String[] record_arr) {
		for (int i = 0; i < record_arr.length; i++) {
			record_service.deleteRecord(Integer.parseInt(record_arr[i]));
		}
		return true;
	}

	@RequestMapping(value = "/queryBlogByLike.action")
	@ResponseBody
	public List<Blog> queryBlogByLike(String starttime, String endtime, String blog_title) {
		BlogVo2 bVo2 = new BlogVo2();
		// System.out.println("时间："+starttime+" "+endtime);
		if (starttime != "") {
			System.out.println("添加了一个条件：" + starttime);
			bVo2.setStarting_time(starttime);
		}
		if (endtime != "") {
			System.out.println("添加了一个条件：" + endtime);
			bVo2.setEnding_time(endtime);
		}
		if (blog_title != "") {
			System.out.println("添加了一个条件：" + blog_title);
			bVo2.setTitle_str_like(blog_title);
		}
		PagePojo<Blog> pp = blog_service2.queryByPage(bVo2, 1, 10000);
		List<Blog> list = pp.getData();
		for (Blog blog : list) {
			System.out.println(blog.getBlog_text());
		}
		if (pp.getData().size() > 0) {
			return pp.getData();
		} else {
			return null;
		}
	}

	@RequestMapping(value = "/delCheckBlog.action")
	@ResponseBody
	public boolean delCheckBlog(String[] blog_arr){
		boolean flag = true;
		for (int i = 0; i < blog_arr.length; i++) {
			try {
				if (!blog_service.deleteBlog(Integer.parseInt(blog_arr[i]))) {
					flag = false;
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				//e.printStackTrace();
				return false;
			}
		}
		return flag;
	}
}
