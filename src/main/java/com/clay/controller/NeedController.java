package com.clay.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clay.service.UserService;

@Controller
public class NeedController {
    
	@Resource 
	private UserService userService;
	
	@RequestMapping("/portfolio.html")
	public String enterportfolio(){
		
		return "portfolio";
	}
}
