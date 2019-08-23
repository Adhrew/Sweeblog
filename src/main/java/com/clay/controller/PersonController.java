package com.clay.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.clay.entity.Blog;
import com.clay.entity.Record;
import com.clay.pojo.BlogVo;
import com.clay.pojo.PagePojo;
import com.clay.pojo.RecordVo;
import com.clay.service.RecordService;
import com.clay.service.UserService;
import com.google.gson.Gson;

@Controller
public class PersonController {
	
	@Resource
	private RecordService recordService;
	
	@RequestMapping("/personal.html")
	public String personal(HttpSession session, HttpServletRequest request) {
		return "personal";
	}
	
	@RequestMapping("/personal_acc.html")
	public String personal_acc(HttpSession session, HttpServletRequest request) {
		return "personal_acc";
	}
	
	@RequestMapping("/personal_blog.html")
	public String personal_blog(HttpSession session, HttpServletRequest request) {
		return "personal_blog";
	}
	
	@RequestMapping("/personal_init.html")
	public String personal_init(HttpSession session, HttpServletRequest request) {
		return "personal_init";
	}
	
	@RequestMapping("/personal_record.html")
	public String personal_record(HttpSession session, HttpServletRequest request) {
		return "personal_record";
	}
	
	@RequestMapping("/acc_init.action")
	public void personal_acc_init(@RequestParam("userid")int userid,HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		RecordVo vo = new RecordVo();
		vo.setUser_id(userid);
		int count = recordService.getCount(vo);
		
		out.print(count);
		out.flush();
		out.close();
		
	}
	
	@RequestMapping("/acc_page.action")
	public void personal_acc_page(@RequestParam("userid")int userid,@RequestParam("curr")int curr,HttpServletResponse response, HttpServletRequest request) throws IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		RecordVo vo = new RecordVo();
		vo.setUser_id(userid);
		PagePojo<Record> list = recordService.queryByPage(vo, curr, 3);
		
		Gson gson = new Gson();
		String str = gson.toJson(list);	
		
		out.print(str);
		out.flush();
		out.close();
		
	}
	
	@RequestMapping("/acc_record.html")
	public String personal_acc_record(@RequestParam("recordid")int recordid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = recordService.dealRecord(recordid);
		if(!deal){
			out.print("<script>alert('余额不足，请先充值！')</script>");
		}
		out.flush();
		out.close();
		return "Redirect:personal_acc.html";
	}
	
	@RequestMapping("/rej_record.html")
	public String personal_rej_record(@RequestParam("recordid")int recordid,HttpServletResponse response, HttpServletRequest request) throws Exception{
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		boolean deal = recordService.dealRecordNot(recordid);
		if(!deal){
			out.print("<script>alert('拒绝失败！')</script>");
		}
		out.flush();
		out.close();
		return "Redirect:personal_acc.html";
	}
}
