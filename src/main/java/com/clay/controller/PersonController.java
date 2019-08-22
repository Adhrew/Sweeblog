package com.clay.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonController {
	
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
	
}
