package com.clay.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PersonnalController {

	@RequestMapping("/personal.html")
	public String personal(HttpSession session, HttpServletRequest request) {
		return "personal";
	}
}
